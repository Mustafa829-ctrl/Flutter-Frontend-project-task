import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Cupertino extends StatefulWidget {
  const Cupertino({super.key});

  @override
  State<Cupertino> createState() => _SettingsState();
}

class _SettingsState extends State<Cupertino> {
  bool wifiEnabled = true;
  bool bluetoothEnabled = false;
  bool notificationEnabled = true;
  bool darkmodeEnabled = false;
  bool isSwitchON = true;
  double selectedValue = 20;
  List<String> itemList = ["Hamza", "Ali", "Ayesha","Sara","Ahmed","Abdullah"];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        title: Text("Cupertino Switch", style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.access_time,color: Colors.purple,),
          Icon(Icons.notifications_none_outlined,color: Colors.purple,),
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Text("Settings",style: TextStyle(
                fontWeight: FontWeight.w900,
              fontSize: 30,
            ),),
          ListTile(
          leading: (isSwitchON ? Icon(Icons.wifi) : Icon(Icons.signal_wifi_bad)),
              title: Text("Wifi",style: TextStyle(fontWeight: FontWeight.w600),),
              subtitle: Text(isSwitchON ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
              activeColor: Colors.deepPurple,
              inactiveTrackColor: Colors.blueGrey,
              thumbColor: Colors.white,
              inactiveThumbColor: Colors.black12,
              value: wifiEnabled,
              onChanged: (val){
              setState(() {
              wifiEnabled = val;
              });
              }),
              ),
            ListTile(
              leading: (isSwitchON ? Icon(Icons.bluetooth_disabled) : Icon(Icons.bluetooth)),
              title: Text("Bluetooth",style: TextStyle(fontWeight: FontWeight.w600),),
              subtitle: Text(isSwitchON ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
                  activeColor: Colors.deepPurple,
                  inactiveTrackColor: Colors.blueGrey,
                  thumbColor: Colors.white,
                  inactiveThumbColor: Colors.black12,
                  value: bluetoothEnabled,
                  onChanged: (val){
                    setState(() {
                      bluetoothEnabled = val;
                    });
                  }),
            ),
            ListTile(
              leading: (isSwitchON ? Icon(Icons.notifications_none_outlined) : Icon(Icons.notifications_off)),
              title: Text("Notifications",style: TextStyle(fontWeight: FontWeight.w600),),
              subtitle: Text(isSwitchON ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
                  activeColor: Colors.deepPurple,
                  inactiveTrackColor: Colors.blueGrey,
                  thumbColor: Colors.white,
                  inactiveThumbColor: Colors.black12,
                  value: notificationEnabled,
                  onChanged: (val){
                    setState(() {
                      notificationEnabled = val;
                    });
                  }),
            ),
            ListTile(
              leading: (isSwitchON ? Icon(Icons.brightness_7) : Icon(Icons.dark_mode)),
              title: Text("Dark Mode",style: TextStyle(fontWeight: FontWeight.w600),),
              subtitle: Text(isSwitchON ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
                  activeColor: Colors.deepPurple,
                  inactiveTrackColor: Colors.blueGrey,
                  thumbColor: Colors.white,
                  inactiveThumbColor: Colors.black12,
                  value: darkmodeEnabled,
                  onChanged: (val){
                    setState(() {
                      darkmodeEnabled = val;
                    });
                  }),
            ),
            Text("Select Volume",style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("0",style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),),
                Slider(
                    value: selectedValue,
                    min: 0, max: 100,
                    divisions: 10,
                    label: selectedValue.round().toString(),
                    thumbColor: Colors.white,
                    onChanged: (value){
                      setState(() {
                        selectedValue = value;
                      });
                    }),
                Text("100",style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),),
              ],
            ),
            Text("Enter Your OTP",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Pinput(
              length: 4,
              showCursor: true,
              onCompleted: (value){
                print(value);
              },
              defaultPinTheme: PinTheme(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)
                  ),
                  textStyle: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w900,
                      color: Colors.black,
                  )
              ),
            ),
            SizedBox(height: 20,),
            Text("Users",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            DropdownButton<String>(
                hint: Text("Select User",style: TextStyle(
                  fontSize: 20,
                ),),
                value: selectedItem,
                items: itemList.map(( String item){
                  return DropdownMenuItem(
                      value: item,
                      child: Text(item.toString()));
                }).toList(),
                onChanged: (String? value){
                  setState(() {
                    selectedItem = value;
                  });
                }),
              ],),
        ),
    );
  }
}