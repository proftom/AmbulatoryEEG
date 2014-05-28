//*********************************************************
//
// Copyright (c) Microsoft. All rights reserved.
//
//*********************************************************

using System.Collections.Generic;
using Windows.Storage.Streams;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Navigation;
using SDKTemplate;
using System;
using System.Text;
using Windows.Storage.Streams;
using System.Threading;

using Windows.Devices.Bluetooth;
using Windows.Devices.Bluetooth.GenericAttributeProfile;
using Windows.Devices.Enumeration;
using Windows.Devices.Enumeration.Pnp;

namespace BluetoothGattHeartRate
{

    class Test
    {



    }
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Scenario1 : SDKTemplate.Common.LayoutAwarePage
    {
        // A pointer back to the main page.  This is needed if you want 
        // to call methods in MainPage such as NotifyUser().
        MainPage rootPage = MainPage.Current;
        
        public Scenario1()
        {
            this.InitializeComponent();
        }

        /// <summary>
        /// Invoked when this page is about to be displayed in a Frame.
        /// </summary>
        /// <param name="e">Event data that describes how this page was reached. The Parameter property is typically
        /// used to configure the page.</param>
        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            if (HeartRateService.Instance.IsServiceInitialized)
            {
                foreach (var measurement in HeartRateService.Instance.DataPoints)
                {
                    outputListBox.Items.Add(measurement.ToString());
                }
                outputGrid.Visibility = Visibility.Visible;
                RunButton.IsEnabled = false;
            }
            HeartRateService.Instance.ValueChangeCompleted += Instance_ValueChangeCompleted;
        }
        
        protected override void OnNavigatedFrom(NavigationEventArgs e)
        {
            HeartRateService.Instance.ValueChangeCompleted -= Instance_ValueChangeCompleted;
        }

        void outputDataChart_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            outputDataChart.PlotChart(HeartRateService.Instance.DataPoints);
        }

        private async void Instance_ValueChangeCompleted(HeartRateMeasurement heartRateMeasurementValue)
        {
            // Serialize UI update to the the main UI thread.
            await this.Dispatcher.RunAsync(Windows.UI.Core.CoreDispatcherPriority.Normal, () =>
            {
                statusTextBlock.Text = "Latest received heart rate measurement: " +
                    heartRateMeasurementValue.HeartRateValue;

                outputDataChart.PlotChart(HeartRateService.Instance.DataPoints);

                outputListBox.Items.Insert(0, heartRateMeasurementValue);
            });
        }

        private async void RunButton_Click(object sender, RoutedEventArgs e)
        {
            RunButton.IsEnabled = false;
            //DeviceClass d = new DeviceClass();
            //GattDeviceService ds = new GattDeviceService();
            //ds.
            //Guid d = new Guid("BE33641E-CE86-84C4-6B8A-2AF02A83687F");
            //ds.Uuid = "BE33641E-CE86-84C4-6B8A-2AF02A83687F";             
            //var devices = await DeviceInformation.FindAllAsync( //GattDeviceService.GetDeviceSelectorFromUuid(d));
            //    GattDeviceService.GetDeviceSelectorFromUuid(GattServiceUuids.HeartRate),
            //    new string[] { "System.Devices.ContainerId" });
            //var devices = await Windows.Devices.Enumeration.DeviceInformation.FindAllAsync(GattDeviceService.GetDeviceSelectorFromUuid(GattServiceUuids.GenericAccess));
            //Find devices that expose the service (health)
            var devices = await Windows.Devices.Enumeration.DeviceInformation.FindAllAsync(GattDeviceService.GetDeviceSelectorFromUuid(new Guid("0000180d-0000-1000-8000-00805f9b34fb")));
            var service = await GattDeviceService.FromIdAsync(devices[0].Id);
            //////var characteristic = service.GetCharacteristics(GattCharacteristic.ConvertShortIdToUuid(0x2A00))[0];
            //////var deviceNameBytes = (await characteristic.ReadValueAsync()).Value;
            //////var deviceName = Encoding.UTF8.GetString(deviceNameBytes, 0, deviceNameBytes.Length);  
            //////var x = Windows.Security.Cryptography.CryptographicBuffer.ConvertBinaryToString(Windows.Security.Cryptography.BinaryStringEncoding.Utf8, deviceNameBytes);
            //////Get  the char (0x2A37)
            var accData = service.GetCharacteristics(new Guid("00002A37-0000-1000-8000-00805f9b34fb"))[0];
            accData.ValueChanged += accData_ValueChanged;
            //Start notifications
            await accData.WriteClientCharacteristicConfigurationDescriptorAsync(GattClientCharacteristicConfigurationDescriptorValue.Notify);

            while(true)
            {

            };
            
            
            //var accConfig = service.GetCharacteristics(new Guid("00002A37-0000-1000-8000-00805f9b34fb"))[0];
            ////Write 1 to start accelerometer sensor  

            //await accConfig.WriteValueAsync(Windows.Security.Cryptography.CryptographicBuffer.CreateFromByteArray(new byte[] { 1 }));
            //Get the accelerometer configuration characteristic  
            DevicesListBox.Items.Clear();

            if (devices.Count > 0)
            {
                foreach (var device in devices)
                {
                    DevicesListBox.Items.Add(device);
                }
                DevicesListBox.Visibility = Visibility.Visible;
            }
            else
            {
                rootPage.NotifyUser("Could not find any Heart Rate devices. Please make sure your device is paired " +
                    "and powered on!",
                    NotifyType.StatusMessage);
            }
            RunButton.IsEnabled = true;
        }

        async void accData_ValueChanged(GattCharacteristic sender, GattValueChangedEventArgs args)
        {
            var data = new byte[args.CharacteristicValue.Length];
            DataReader.FromBuffer(args.CharacteristicValue).ReadBytes(data);
            //Windows.Security.Cryptography.CryptographicBuffer.CopyToByteArray((await sender.ReadValueAsync()).Value, out values);
            System.Diagnostics.Debug.WriteLine("Data: {0}", data[1]);
            //var x = data[0];
        }  

        private async void DevicesListBox_SelectionChanged(object sender, SelectionChangedEventArgs args)
        {
            RunButton.IsEnabled = false;
            var device = DevicesListBox.SelectedItem as DeviceInformation;
            DevicesListBox.Visibility = Visibility.Collapsed;

            statusTextBlock.Text = "Initializing device...";
            HeartRateService.Instance.DeviceConnectionUpdated += OnDeviceConnectionUpdated;
            await HeartRateService.Instance.InitializeServiceAsync(device);

            outputGrid.Visibility = Visibility.Visible;
            try
            {
                // Check if the device is initially connected, and display the appropriate message to the user
                var deviceObject = await PnpObject.CreateFromIdAsync(PnpObjectType.DeviceContainer,
                    device.Properties["System.Devices.ContainerId"].ToString(), 
                    new string[] { "System.Devices.Connected" });
            
                bool isConnected;
                if (Boolean.TryParse(deviceObject.Properties["System.Devices.Connected"].ToString(), out isConnected))
                {
                    OnDeviceConnectionUpdated(isConnected);
                }
            } 
            catch (Exception e)
            {
                rootPage.NotifyUser("Retrieving device properties failed with message: " + e.Message, 
                    NotifyType.ErrorMessage);
            }
        }

        private async void OnDeviceConnectionUpdated(bool isConnected)
        {
            await Dispatcher.RunAsync(Windows.UI.Core.CoreDispatcherPriority.Normal, () =>
            {
                if (isConnected)
                {
                    statusTextBlock.Text = "Waiting for device to send data...";
                }
                else
                {
                    statusTextBlock.Text = "Waiting for device to connect...";
                }
            });
        }
    }
}
