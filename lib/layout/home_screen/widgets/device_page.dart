/*
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class DevicePage extends StatefulWidget {
  const DevicePage({required this.server,Key? key}) : super(key: key);
  final BluetoothDevice server;
  @override
  State<DevicePage> createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  static final clientId=0;
  late BluetoothConnection connection;
  String messageBuffer='';
  List<Message> message=<Message>[];
  final TextEditingController controller=TextEditingController();
  final ScrollController scrollController=ScrollController();
  bool connected=true,disConnected=false;
  bool get _connected=> connection != null && connection.isConnected;

  @override
  void initState(){
    super.initState();
    BluetoothConnection.toAddress(widget.server.address).then((_connection){
      print("Connected to the device");
      connection=_connection;
      setState(() {
        connected = false;
        disConnected = false;
      });
    });
    connection.input.listen(_onDataReceived).onDone(() {
      if(disConnected){
        print('Disconnected Locally!');
      }else{
        print('Disconnected Remotely!');
      }
      if(this.mounted){
        setState(() {

        });
      }
    });
  }
  void dispose(){
    if(connected){
      disConnected=true;
      print("Disconnected Connection Error occured!");
      connection.dispose();
      connection=null;
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Message{
  final String text;
  final int id;
  Message({required this.text,required this.id});
}
*/
/*
https://pub.dev/packages/flutter_reactive_ble
 */
