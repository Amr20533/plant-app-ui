/*
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

enum _DeviceAvailability{NO,PEREHAPSE,YES}

class SelectBondedDevicePage extends StatefulWidget {
  const SelectBondedDevicePage({this.checkAvailability = true,required this.onChange,Key? key}) : super(key: key);
  final bool checkAvailability;
  final Function onChange;
  @override
  State<SelectBondedDevicePage> createState() => _SelectBondedDevicePageState();
}
class _DeviceWithAvailability extends BluetoothDevice{

  int rssi;
  BluetoothDevice device;

  _DeviceWithAvailability({required super.address,required this.device,required this.availability,required this.rssi});
  _DeviceAvailability availability;
}
class _SelectBondedDevicePageState extends State<SelectBondedDevicePage> {
  // const _SelectBondedDevicePageState({super.key});
  List<_DeviceWithAvailability> devices=<_DeviceWithAvailability>[];
  late StreamSubscription<BluetoothDiscoveryResult> _subscription;
  late bool isDiscovering;
  // FlutterBluetoothSerial.instance.getBondedDevices().then((List<BluetoothDevice> bondedDevice){
  // setState((){
  // devices=bondedDevices.map((device)=>_DevicesWithAvailability(
  //   device,
  //   widget.checkAvailablity?_DeviceAvailablity.PEREHAPSE:_DeviceAvailablity.YES,
  // )).toList();
  // });
  // });
  @override
  void initState(){
    super.initState();
    isDiscovering=widget.checkAvailability;
    if(isDiscovering){
      startDiscovery();
    }
  }

  @override
  Widget build(BuildContext context) {
    List<BluetoothDeviceListEntry> list=devices.map((_device)=>BluetoothDeviceListEntry(
      device:_device,
      // enabled: _device.availability == _DeviceAvailability.YES,
      // rssi:_device.rssi
      onTap: () {
        widget.onCahtPage(_device.device);
      },
    )).toList();
    return ListView(children:list,);
  }
  void restartDiscovering(){
    setState((){
      isDiscovering = true;
    });
  }
  void startDiscovery(){
  _subscription=FlutterBluetoothSerial.instance.startDiscovery().listen((event) {
    setState(() {
      Iterator i=devices.iterator;
      while(i.moveNext()){
        var vDevice = i.current;
        if(vDevice.device == event.device){
          vDevice.availability=_DeviceAvailability.YES;
          vDevice.rssi=event.rssi;
        }
      }
    });
  });
  }

  // _subscription.onDone((){
  //   setState((){
  //     isDiscovering = false;
  // });
  // });

  void dispose(){
    // Avoid memory leak (setState after dispose) and cancel discovering
    _subscription.cancel();
    super.dispose();
  }
}
class BluetoothDeviceListEntry extends StatelessWidget {
  const BluetoothDeviceListEntry({required this.device,required this.onTap,Key? key}) : super(key: key);
  final VoidCallback onTap;
  final BluetoothDevice device;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: onTap,
      leading: const Icon(Icons.devices),
      title:Text(device.name ?? "Unknown Device"),
      subtitle:Text(device.address.toString()),
      trailing: Container(color: Colors.blue,
        child: TextButton(
          onPressed:onTap,
          child:const Text('Connect',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),

        ),
      ),
    );
  }
}*/
