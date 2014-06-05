using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Windows.Devices.Bluetooth.GenericAttributeProfile;
using Windows.Devices.Enumeration;
using Windows.Devices.Enumeration.Pnp;

using Windows.Storage.Streams;

using System.Text;
using System.Diagnostics;

namespace Electroencephalograph
{
    class batteryService
    {

        public batteryService()
        {
            IsInitialised = true;
        }

        private async Task ConfigureServiceForNotificationsAsync()
        {

        }
        public bool IsInitialised { get; private set; }
        public static batteryService Instance
        {
            get { return instance; }
        }
        public GattDeviceService service { get; set; }

        private static batteryService instance = new batteryService();
        public GattDeviceService Service
        {
            get { return service; }
        }

        private async void batteryNotification(GattCharacteristic sender, GattValueChangedEventArgs args)
        {
            var data = new byte[args.CharacteristicValue.Length];
            DataReader.FromBuffer(args.CharacteristicValue).ReadBytes(data);
            System.Diagnostics.Debug.WriteLine(data[1]);
        }
    }
}
