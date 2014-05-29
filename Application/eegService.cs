using System;
using Windows.Devices.Bluetooth.GenericAttributeProfile;
using Windows.Devices.Enumeration;
using Windows.Devices.Enumeration.Pnp;

namespace Electroencephalograph
{
    public class eegService
    {
        public UInt16 ChannelMap { get; set; }

        public UInt32 AcquisitionRate { get; set; }

        public List<eegChannel> eegChannels { get; set; }
        public bool IsInitialised { get; }

        public GattDeviceService service { get; set; }
        public GattCharacteristic characteristic { get; set; }

        private static eegService instance = new eegService();
        public eegService(UInt16 channelMap, UInt32 acquisitionRate)
        {
            ChannelMap = channelMap;
            AcquisitionRate = acquisitionRate;
            IsInitialised = true;
        }

        public eegService() : this(0x0000, 0xFF) { }

        public static eegService Instance
        {
            get { return instance; }
        }

        public GattDeviceService Service
        {
            get { return service; }
        }

        /// <summary>
        /// Configuration to recieved notifications whenever the characteristic value changes 
        /// </summary>
        private async Task ConfigureServiceForNotificationsAsync()
        {
            try
            {
                
                // Register the event handler for receiving notifications
                characteristic.ValueChanged += eegNotification;
                
                // In order to avoid unnecessary communication with the device, determine if the device is already 
                // correctly configured to send notifications.
                // By default ReadClientCharacteristicConfigurationDescriptorAsync will attempt to get the current
                // value from the system cache and communication with the device is not typically required.
                var currentDescriptorValue = await characteristic.ReadClientCharacteristicConfigurationDescriptorAsync();

                if ((currentDescriptorValue.Status != GattCommunicationStatus.Success) ||
                    (currentDescriptorValue.ClientCharacteristicConfigurationDescriptor != CHARACTERISTIC_NOTIFICATION_TYPE))
                {
                    // Set the Client Characteristic Configuration Descriptor to enable the device to send notifications
                    // when the Characteristic value changes
                    GattCommunicationStatus status =
                        await characteristic.WriteClientCharacteristicConfigurationDescriptorAsync(
                        CHARACTERISTIC_NOTIFICATION_TYPE);

                    if (status == GattCommunicationStatus.Unreachable)
                    {
                        // Register a PnpObjectWatcher to detect when a connection to the device is established,
                        // such that the application can retry device configuration.
                        StartDeviceConnectionWatcher();
                    }
                }
            }
            catch (Exception e)
            {
                rootPage.NotifyUser("ERROR: Accessing your device failed." + Environment.NewLine + e.Message,
                    NotifyType.ErrorMessage);
            }
        }



        private async void eegNotification(GattCharacteristic sender, GattValueChangedEventArgs args)
        {

        }

    }

    public class eegChannel
    {
        public uint ChannelID { get; set; }
        public List<eegMeasurement> Data { get; set; }
    }

    public class eegMeasurement
    {
        public uint Value { get; set; }
        public DateTime Timestamp { get; set; }
    }
}