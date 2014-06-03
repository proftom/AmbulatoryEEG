using Electroencephalograph.Common;
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

using Windows.System.Threading;
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
            public Int32 Name { get; set; }
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
            (LineChart.Series[0] as LineSeries).Name = "Channel 4";
            //(LineChart.Series[1] as LineSeries).ItemsSource = financialStuffList;
        }

        private async void cbConnect_Click(object sender, RoutedEventArgs e)
        {            
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

            devices = await Windows.Devices.Enumeration.DeviceInformation.FindAllAsync(GattDeviceService.GetDeviceSelectorFromShortId(0x180f));
            batteryService.Instance.service = await GattDeviceService.FromIdAsync(devices[0].Id);
            //var batteryData = batteryService.Instance.service.GetCharacteristics(new Guid("00002a19-0000-1000-8000-00805f9b34fb"))[0];
            //batteryData.ValueChanged += batteryData_ValueChanged;
            //Start notifications
            await eegData.WriteClientCharacteristicConfigurationDescriptorAsync(GattClientCharacteristicConfigurationDescriptorValue.Notify);
            //var x = await batteryData.ReadClientCharacteristicConfigurationDescriptorAsync();
            
            TimerElapsedHandler f = new TimerElapsedHandler(batchUpdate);
            periodicTimer = ThreadPoolTimer.CreatePeriodicTimer(f, new TimeSpan(0, 0, 0, 0,400));
            
        }

        void batteryData_ValueChanged(GattCharacteristic sender, GattValueChangedEventArgs args)
        {

            //if (Dispatcher.HasThreadAccess)
            //{

            //}
            //else
            //{
            //}
        }

        private CoreDispatcher cd;
        List<FinancialStuff> lst = new List<FinancialStuff>();
        async void eegData_ValueChanged(GattCharacteristic sender, GattValueChangedEventArgs args)
        {
            var data = new byte[args.CharacteristicValue.Length];
            DataReader.FromBuffer(args.CharacteristicValue).ReadBytes(data);


            Random rnd = new Random();
            var s = Convert.ToString(data[2], 2).PadLeft(8, '0');
            var s2 = Convert.ToString(data[1], 2).PadLeft(8, '0');

            System.Diagnostics.Debug.WriteLine("{0} {1} {2} {3}", data[0], s, s2, data[3]);
            lock (lst)
            {
                lst.Add(new FinancialStuff() { Name = rnd.Next(1,100), Amount = data[1] });
            }
            
        }

        private void batchUpdate(ThreadPoolTimer source)
        {
            
                AddItem<FinancialStuff>(financialStuffList, lst);                        

        }

        //Need to update the data perdioically
        private Windows.System.Threading.ThreadPoolTimer periodicTimer = null;
        public class LineSeriesEx : LineSeries
        {
            protected override DataPoint CreateDataPoint()
            {
                return new EmptyDataPoint();
            }
        }

        public class EmptyDataPoint : DataPoint
        {
            // As the method name says, this DataPoint is empty.
        }

public async void AddItem<T>(ObservableCollection<T> oc, List<T> items)
{
    // "lst" reference is locked here, but it wasn't locked in the event handler 
    lock (items)
    {
        // Change this to what you want
        const int maxSize = 30;

        // Make sure it doesn't index out of bounds
        int startIndex = Math.Max(0, items.Count - maxSize);
        int length = items.Count - startIndex;

        List<T> itemsToRender = items.GetRange(startIndex, length);

        // You can clear it here in your background thread.  The references to the objects
        // are now in the itemsToRender list.
        lst.Clear();

        Dispatcher.RunAsync(CoreDispatcherPriority.High, () =>
        {
            // At second look, this might need to be locked too
            lock(oc)
            {
                oc.Clear();

                for (int i = 0; i < itemsToRender.Count; i++)
                {
                    // I didn't notice it before, but why are you checking the count again?
                    // items.Count());
                    oc.Add(itemsToRender[i]);
                }
             }
        });
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
                    
                    await eegService.Instance.SetAcquisitionRateAsync((ushort) (acqRate.Value));

                };

            sliderTimer.Start();
            
        }

        public static ushort SwapUInt16(ushort v)
        {

            return (ushort)(((v & 0xff) << 8) | ((v >> 8) & 0xff));

        }

        private async void ch_Click(object sender, RoutedEventArgs e)
        {
            //A little bit n00b, but it'll do 
            UInt16 channel_map = Convert.ToUInt16(ch1.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch2.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch3.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch4.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch5.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch6.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch7.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch8.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch9.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch10.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch11.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch12.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch13.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch14.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch15.IsChecked);
            channel_map = (UInt16)(channel_map << 1);
            channel_map += Convert.ToUInt16(ch16.IsChecked);
            await eegService.Instance.SetChannelMapAsync(channel_map);
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
