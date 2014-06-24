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
using System.Threading.Tasks;

using System.ComponentModel;

//using Syncfusion.UI.Xaml.Charts;
// The Basic Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234237

namespace Electroencephalograph
{
    /// <summary>
    /// A basic page that provides characteristics common to most applications.
    /// </summary>
    public sealed partial class MainPage : Page
    {
        //CategoryDataViewModel cdv;
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

        batteryService bs;
        UsersViewModel uvm;

        public MainPage()
        {
            this.InitializeComponent();
            this.navigationHelper = new NavigationHelper(this);
            this.navigationHelper.LoadState += navigationHelper_LoadState;
            this.navigationHelper.SaveState += navigationHelper_SaveState;
            //cdv = new CategoryDataViewModel();
            //lineChart2.Series.Clear();
            //Syncfusion.UI.Xaml.Charts.LineSeries series1 = new Syncfusion.UI.Xaml.Charts.LineSeries();
            //series1.XBindingPath = "Category";
            //series1.YBindingPath = "Value";
            //series1.ItemsSource = cdv.CategoricalDatas;
            //lineChart2.Series.Add(series1);
            //lineChart2.Series[0].ItemsSource = cdv.CategoricalDatas;
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

            financialStuffList.Add(new FinancialStuff() { Name = 1, Amount = 10 });
            financialStuffList.Add(new FinancialStuff() { Name = 2, Amount = 200 });
            financialStuffList.Add(new FinancialStuff() { Name = 3, Amount = 5 });

            Random r = new Random();
            r.Next();
            for (int i = 0; i < 100; i++)
                financialStuffList.Add(new FinancialStuff() { Name = i, Amount = r.Next(1023)});

            //CategoryDataViewModel c = new CategoryDataViewModel();
            
            (LineChart.Series[0] as LineSeries).ItemsSource = financialStuffList;

            //(LineChart.Series[0] as LineSeries).Name = "Channel 4";
            //(LineChart.Series[1] as LineSeries).ItemsSource = financialStuffList;

        }

        private async void cbConnect_Click(object sender, RoutedEventArgs e)
        {
            var devices = await Windows.Devices.Enumeration.DeviceInformation.FindAllAsync(GattDeviceService.GetDeviceSelectorFromShortId(0x0EE0));

            if (devices.Count < 1)
            {
                await new MessageDialog("Could not locate any EEG devices in the vinicity").ShowAsync();
                return;
            }

            //By default connect to the first EEG service found
            eegService.Instance.service = await GattDeviceService.FromIdAsync(devices[0].Id);
            eegService.Instance.IsInitialised = true;
            var eegData = eegService.Instance.service.GetCharacteristics(new Guid("00000EE1-0000-1000-8000-00805f9b34fb"))[0];
            eegData.ValueChanged += eegData_ValueChanged;

            //devices = await Windows.Devices.Enumeration.DeviceInformation.FindAllAsync(GattDeviceService.GetDeviceSelectorFromShortId(0x2A37));
            //batteryService.Instance.service = await GattDeviceService.FromIdAsync(devices[0].Id);
            //var batteryData = batteryService.Instance.service.GetCharacteristics(new Guid("00002a19-0000-1000-8000-00805f9b34fb"))[0];
            //batteryData.ValueChanged += batteryData_ValueChanged;
            //Start notifications
            await eegData.WriteClientCharacteristicConfigurationDescriptorAsync(GattClientCharacteristicConfigurationDescriptorValue.Notify);
            //var x = await batteryData.ReadClientCharacteristicConfigurationDescriptorAsync();

            //TimerElapsedHandler f = new TimerElapsedHandler(batchUpdate);
            //periodicTimer = ThreadPoolTimer.CreatePeriodicTimer(f, new TimeSpan(0, 0, 0, 0, 40000));






            //////////////////////
            //var devices = await Windows.Devices.Enumeration.DeviceInformation.FindAllAsync(GattDeviceService.GetDeviceSelectorFromShortId(0x1800));
            //var service = await GattDeviceService.FromIdAsync(devices[0].Id);

            //var gapData = service.GetCharacteristics(new Guid("00002A04-0000-1000-8000-00805f9b34fb"))[0];
            //var raw = await gapData.ReadValueAsync();

            //byte[] conParas = new byte[raw.Value.Length];
            //DataReader.FromBuffer(raw.Value).ReadBytes(conParas);
            ////I can breakpoint and verify that the read works fine

            ////var tmp = conParas[0];
            ////conParas[0] = conParas[1];
            ////conParas[1] = tmp;
            ////tmp = conParas[2];
            ////conParas[2] =conParas[3]; conParas[3] = tmp;
            ////tmp = conParas[4];
            ////conParas[5] = conParas[4];
            ////conParas[5] = tmp;
            ////tmp = conParas[6];
            ////conParas[6] = conParas[7];
            ////conParas[7] = tmp;
            //DataWriter writer = new DataWriter();
            ////Endianess of reciever data inverted
            //writer.WriteInt16((Int16)SwapUInt16(100));
            //writer.WriteInt16((Int16)SwapUInt16(100));
            //writer.WriteInt16((Int16)SwapUInt16(100));
            //writer.WriteInt16((Int16)SwapUInt16(100));
            //var z = conParas.AsBuffer();
            //var status = await gapData.WriteValueAsync(conParas.AsBuffer());
            
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
        public int count = 0;
        async void eegData_ValueChanged(GattCharacteristic sender, GattValueChangedEventArgs args)
        {
            var data = new byte[args.CharacteristicValue.Length];
            DataReader.FromBuffer(args.CharacteristicValue).ReadBytes(data);

            //System.Diagnostics.Debug.WriteLine("{0}", count++);
            //count++;
            //if ((count % 500) == 0)
                System.Diagnostics.Debug.WriteLine("{0}\t{1}", data[5], DateTime.UtcNow.ToString("mm:ss.ffffff"));

            //Random rnd = new Random();
            //var s = Convert.ToString(data[2], 2).PadLeft(8, '0');
            //var s2 = Convert.ToString(data[1], 2).PadLeft(8, '0');

            //System.Diagnostics.Debug.WriteLine("{0} {1} {2} {3}", data[0], s, s2, data[3]);
            //lock (lst)
            //{
            //    lst.Add(new FinancialStuff() { Name = rnd.Next(1,100), Amount = data[1] });
            //}
            
        }

        private void batchUpdate(ThreadPoolTimer source)
        {
            
                AddItem<FinancialStuff>(financialStuffList, lst);                        

        }

        //Need to update the data perdioically
        private Windows.System.Threading.ThreadPoolTimer periodicTimer = null;


        public async void AddItem<T>(ObservableCollection<T> oc, List<T> items)
        {
            // "lst" reference is locked here, but it wasn't locked in the event handler 
            //lock (items)
            //{
                // Change this to what you want
                const int maxSize = 50;

                // Make sure it doesn't index out of bounds
                int startIndex = Math.Max(0, items.Count - maxSize);
                int length = items.Count - startIndex;

                List<T> itemsToRender = items.GetRange(startIndex, length);

                // You can clear it here in your background thread.  The references to the objects
                // are now in the itemsToRender list.
                lst.Clear();
            //Dispatcher.
                //SynchronizationContext.SetSynchronizationContext(new SynchronizationContext());
                //var UISyncContext = TaskScheduler.FromCurrentSynchronizationContext();
                //Windows.ApplicationModel.Core.CoreApplication.MainView.Dispatcher.RunIdleAsync
                 await  Task.Factory.StartNew(() =>
                // Please verify this is the correct syntax
                
                {
                    // At second look, this might need to be locked too
                    // EDIT: This probably will just add overhead now that it's not running async.
                    // You can probably remove this lock
                    lock (oc)
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
            //}
        }

        private DispatcherTimer sliderTimer = null;
        private void Slider_ValueChanged(object sender, RangeBaseValueChangedEventArgs e)
        {
            if (!eegService.Instance.IsInitialised)
                return; 
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

    

    public class UserProfile
    {
       public DateTime TimeStamp { get; set; }
 
       public double NoOfUsers { get; set; }
    }
 
    public class UsersViewModel
    {
         public UsersViewModel()
         {
           this.UsersList = new ObservableCollection<UserProfile>();
           DateTime date = DateTime.Today;
           UsersList.Add(new UserProfile {
           TimeStamp=date.AddHours(0.5),NoOfUsers=1000});
           UsersList.Add(new UserProfile {
           TimeStamp=date.AddHours(1),NoOfUsers = 5000 });
           UsersList.Add(new UserProfile { TimeStamp = date.AddHours(1.5),     
           NoOfUsers = 3000 });
           UsersList.Add(new UserProfile { TimeStamp = date.AddHours(2),
           NoOfUsers = 4000 });
           UsersList.Add(new UserProfile { TimeStamp = date.AddHours(2.5),
           NoOfUsers = 2000 });
           UsersList.Add(new UserProfile { TimeStamp = date.AddHours(3),
           NoOfUsers = 1000 });
          }
         public ObservableCollection<UserProfile> UsersList
         {
            get; set;
         }

    }
}

