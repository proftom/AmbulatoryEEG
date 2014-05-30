﻿using Electroencephalograph.Common;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;


using WinRTXamlToolkit.Controls.DataVisualization.Charting;
using Windows.Devices.Bluetooth;
using Windows.Devices.Bluetooth.GenericAttributeProfile;
using Windows.Devices.Enumeration;
using Windows.Devices.Enumeration.Pnp;

using System.Text;
using Windows.Storage.Streams;

using Windows.UI.Popups;

using System.Net;

using System.Collections.ObjectModel;

using Windows.UI.Core;
// The Basic Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234237

namespace Electroencephalograph
{
    /// <summary>
    /// A basic page that provides characteristics common to most applications.
    /// </summary>
    public sealed partial class MainPage : Page
    {

        private NavigationHelper navigationHelper;
        private ObservableDictionary defaultViewModel = new ObservableDictionary();

        /// <summary>
        /// This can be changed to a strongly typed view model.
        /// </summary>
        public ObservableDictionary DefaultViewModel
        {
            get { return this.defaultViewModel; }
        }

        /// <summary>
        /// NavigationHelper is used on each page to aid in navigation and 
        /// process lifetime management
        /// </summary>
        public NavigationHelper NavigationHelper
        {
            get { return this.navigationHelper; }
        }


        public MainPage()
        {
            this.InitializeComponent();
            this.navigationHelper = new NavigationHelper(this);
            this.navigationHelper.LoadState += navigationHelper_LoadState;
            this.navigationHelper.SaveState += navigationHelper_SaveState;
        }

        /// <summary>
        /// Populates the page with content passed during navigation. Any saved state is also
        /// provided when recreating a page from a prior session.
        /// </summary>
        /// <param name="sender">
        /// The source of the event; typically <see cref="NavigationHelper"/>
        /// </param>
        /// <param name="e">Event data that provides both the navigation parameter passed to
        /// <see cref="Frame.Navigate(Type, Object)"/> when this page was initially requested and
        /// a dictionary of state preserved by this page during an earlier
        /// session. The state will be null the first time a page is visited.</param>
        private void navigationHelper_LoadState(object sender, LoadStateEventArgs e)
        {
        }

        /// <summary>
        /// Preserves state associated with this page in case the application is suspended or the
        /// page is discarded from the navigation cache.  Values must conform to the serialization
        /// requirements of <see cref="SuspensionManager.SessionState"/>.
        /// </summary>
        /// <param name="sender">The source of the event; typically <see cref="NavigationHelper"/></param>
        /// <param name="e">Event data that provides an empty dictionary to be populated with
        /// serializable state.</param>
        private void navigationHelper_SaveState(object sender, SaveStateEventArgs e)
        {
        }

        #region NavigationHelper registration

        /// The methods provided in this section are simply used to allow
        /// NavigationHelper to respond to the page's navigation methods.
        /// 
        /// Page specific logic should be placed in event handlers for the  
        /// <see cref="GridCS.Common.NavigationHelper.LoadState"/>
        /// and <see cref="GridCS.Common.NavigationHelper.SaveState"/>.
        /// The navigation parameter is available in the LoadState method 
        /// in addition to page state preserved during an earlier session.

        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            navigationHelper.OnNavigatedTo(e);
        }

        protected override void OnNavigatedFrom(NavigationEventArgs e)
        {
            navigationHelper.OnNavigatedFrom(e);
        }

        #endregion

        public class FinancialStuff
        {
            public int Name { get; set; }
            public int Amount { get; set; }
        }

        ObservableCollection<FinancialStuff> financialStuffList = new ObservableCollection<FinancialStuff>();
        private void pageRoot_Loaded(object sender, RoutedEventArgs e)
        {
            //List<int> test = new List<int>();
            //for (int i = 0; i < 100; i++)
            //    test.Add(i);
            
            //financialStuffList.Add(new FinancialStuff() { Name = "MSFT", Amount = 10 });
            //financialStuffList.Add(new FinancialStuff() { Name = "AAPL", Amount = 200 });
            //financialStuffList.Add(new FinancialStuff() { Name = "GOOG", Amount = 5 });
            
            (LineChart.Series[0] as LineSeries).ItemsSource = financialStuffList;
            //(LineChart.Series[1] as LineSeries).ItemsSource = financialStuffList;
        }

        private async void cbConnect_Click(object sender, RoutedEventArgs e)
        {
            
            //var devices = await Windows.Devices.Enumeration.DeviceInformation.FindAllAsync(GattDeviceService.GetDeviceSelectorFromUuid(new Guid("00000EE4-0000-1000-8000-00805f9b34fb")));
            var devices = await Windows.Devices.Enumeration.DeviceInformation.FindAllAsync(GattDeviceService.GetDeviceSelectorFromShortId(0x0EE4));

            if (devices.Count < 1)
            {
                await new MessageDialog("Could not locate any EEG devices in the vinicity").ShowAsync();
                return;
            }

            //By default connect to the first EEG service found
            eegService.Instance.service = await GattDeviceService.FromIdAsync(devices[0].Id);

            var eegData = eegService.Instance.service.GetCharacteristics(new Guid("00000EE1-0000-1000-8000-00805f9b34fb"))[0];
            eegData.ValueChanged += eegData_ValueChanged;
            //Start notifications
            await eegData.WriteClientCharacteristicConfigurationDescriptorAsync(GattClientCharacteristicConfigurationDescriptorValue.Notify);
            
        }

        private CoreDispatcher cd;
        List<int> lst = new List<int>();
        async void eegData_ValueChanged(GattCharacteristic sender, GattValueChangedEventArgs args)
        {
            var data = new byte[args.CharacteristicValue.Length];
            DataReader.FromBuffer(args.CharacteristicValue).ReadBytes(data);
            AddItem<FinancialStuff>(financialStuffList, new FinancialStuff() { Name = 1, Amount = data[1] });
            //cd = financialStuffList;
            //cd.RunAsync(CoreDispatcherPriority.Normal,
            //    () => financialStuffList.Add(new FinancialStuff() { Name = DateTime.UtcNow.ToString("mm:ss.ffffff"), Amount = data[1] })
            //    );
            //Windows.Security.Cryptography.CryptographicBuffer.CopyToByteArray((await sender.ReadValueAsync()).Value, out values);
            //SmartDispatcher.BeginInvoke(() => financialStuffList.Add(new FinancialStuff() { Name = DateTime.UtcNow.ToString("mm:ss.ffffff"), Amount = data[1] }));
//            await System.Threading.Tasks.Task.Factory.StartNew(() =>
//                {
//financialStuffList.Add(new FinancialStuff() { Name = DateTime.UtcNow.ToString("mm:ss.ffffff"), Amount = data[1] });
//                }
//                ).ContinueWith( t=>
//                {

//                }, System.Threading.Tasks.TaskScheduler.FromCurrentSynchronizationContext());
            
            //lst.Add(data[1]);
            //var disp = Window.Current.Dispatcher;
            //await Dispatcher.RunAsync(
            //    Windows.UI.Core.CoreDispatcherPriority.High, 
            //    ((Action)(() => (LineChart.Series[0] as LineSeries).ItemsSource = lst)));
            //System.Threading.Tasks.Task.Run((Action)(() => (LineChart.Series[0] as LineSeries).ItemsSource = lst));
            //disp.
            //System.Threading.Tasks.DCoreDispatcher.((Action)(() => (LineChart.Series[0] as LineSeries).ItemsSource = lst));
            //System.Diagnostics.Debug.WriteLine("Data: {0}", data[1]);
            //var x = data[0];
        }

        public async void AddItem<T>(ObservableCollection<T> oc, T item)
        {
            if (Dispatcher.HasThreadAccess)
            {
                oc.Add(item);
            }
            else
            {
                Dispatcher.RunAsync(CoreDispatcherPriority.Low, () => { oc.Add(item); });
            }
        }


        private DispatcherTimer sliderTimer = null;
        private void Slider_ValueChanged(object sender, RangeBaseValueChangedEventArgs e)
        {
            if (sliderTimer != null)
                sliderTimer.Stop();

            sliderTimer = new DispatcherTimer();

            //As to not flood the radio with every change, when the slider is 
            //left for 200 milliseconds, it sends an update
            sliderTimer.Interval = new TimeSpan(0, 0, 0, 0, 200);
            sliderTimer.Tick += async (snd,evn) =>
                {
                    sliderTimer.Stop();
                    
                    await eegService.Instance.SetChannelMapAsync((ushort) (acqRate.Value*10));

                };

            sliderTimer.Start();
            
        }

        public static ushort SwapUInt16(ushort v)
        {

            return (ushort)(((v & 0xff) << 8) | ((v >> 8) & 0xff));

        }



    }

    public static class SmartDispatcher
    {
        private static CoreDispatcher _instance;
        private static void RequireInstance()
        {
            try
            {
                _instance = Window.Current.CoreWindow.Dispatcher;

            }
            catch (Exception e)
            {
                throw new InvalidOperationException("The first time SmartDispatcher is used must be from a user interface thread. Consider having the application call Initialize, with or without an instance.", e);
            }

            if (_instance == null)
            {
                throw new InvalidOperationException("Unable to find a suitable Dispatcher instance.");
            }
        }

        public static void Initialize(CoreDispatcher dispatcher)
        {
            if (dispatcher == null)
            {
                throw new ArgumentNullException("dispatcher");
            }

            _instance = dispatcher;
        }

        public static bool CheckAccess()
        {
            if (_instance == null)
            {
                RequireInstance();
            }
            return _instance.HasThreadAccess;
        }

        public static void BeginInvoke(Action a)
        {
            if (_instance == null)
            {
                RequireInstance();
            }

            // If the current thread is the user interface thread, skip the
            // dispatcher and directly invoke the Action.
            if (CheckAccess())
            {
                a();
            }
            else
            {
                _instance.RunAsync(CoreDispatcherPriority.Normal, () => { a(); });
            }
        }
    }
}
