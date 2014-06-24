using System;

using Windows.Devices.Bluetooth.GenericAttributeProfile;
using Windows.Devices.Enumeration;
using Windows.Devices.Enumeration.Pnp;

using System.Collections.Generic;

using System.Threading.Tasks;

using Windows.Storage.Streams;

using System.Text;
using System.Diagnostics;

namespace Electroencephalograph
{
    public class eegService
    {
        public UInt16 ChannelMap { get; private set; }

        public UInt32 AcquisitionRate { get; set; }

        public List<eegChannel> eegChannels { get; set; }
        public bool IsInitialised { get; set; }

        public GattDeviceService service { get; set; }
        public GattCharacteristic characteristic { get; set; }

        private static eegService instance = new eegService();
        public eegService(UInt16 channelMap, UInt32 acquisitionRate)
        {
            ChannelMap = channelMap;
            AcquisitionRate = acquisitionRate;
            
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

        public async Task SetChannelMapAsync(UInt16 map)
        {
            var acqusitionCharacteristic = service.GetCharacteristics(new Guid("00000EE3-0000-1000-8000-00805f9b34fb"))[0];
            DataWriter writer = new DataWriter();
            //Endianess of reciever data inverted
            writer.WriteInt16((Int16) SwapUInt16(map));
            var status = await acqusitionCharacteristic.WriteValueAsync(writer.DetachBuffer());
            
        }

        public async Task SetAcquisitionRateAsync(UInt16 rate)
        {
            var acqusitionCharacteristic = service.GetCharacteristics(new Guid("00000EE2-0000-1000-8000-00805f9b34fb"))[0];
            DataWriter writer = new DataWriter();
            //Endianess of reciever data inverted
            writer.WriteInt16((Int16) SwapUInt16(rate));
            var status = await acqusitionCharacteristic.WriteValueAsync(writer.DetachBuffer());

        }

        /// <summary>
        /// Configuration to recieved notifications whenever the characteristic value changes 
        /// </summary>
        private async Task ConfigureServiceForNotificationsAsync()
        {

                characteristic.ValueChanged += eegNotification;

                GattCommunicationStatus status =
                    await characteristic.WriteClientCharacteristicConfigurationDescriptorAsync(GattClientCharacteristicConfigurationDescriptorValue.Notify);

                if (status == GattCommunicationStatus.Unreachable)                
                    throw new Exception(status.ToString());                              
            
        }



        private async void eegNotification(GattCharacteristic sender, GattValueChangedEventArgs args)
        {
            var data = new byte[args.CharacteristicValue.Length];
            DataReader.FromBuffer(args.CharacteristicValue).ReadBytes(data);
            System.Diagnostics.Debug.WriteLine(data[1]);
        }

        public ushort SwapUInt16(ushort v)
        {

            return (ushort)(((v & 0xff) << 8) | ((v >> 8) & 0xff));

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