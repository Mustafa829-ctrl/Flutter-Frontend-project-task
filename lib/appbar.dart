import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,size: 50, color: Colors.red,),
        title: Text("App Bar Demo",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.orange
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.settings,size: 45, color: Colors.green,),
          Icon(Icons.notifications,size: 40, color: Colors.yellow,),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: (){},
        label: Text("Add"),
        icon: Icon(Icons.add),
      ),
    );
  }
}