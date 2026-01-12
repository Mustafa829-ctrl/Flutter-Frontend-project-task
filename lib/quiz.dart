import 'dart:math';

import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined,size: 30,),
        title: Text("Instagram",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.live_tv,size: 30,),
          Icon(Icons.near_me_outlined,size: 30,),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Third.jpg"),
            ),
            title: Text("joshua_I",style: TextStyle(
              color: Colors.white,
            ),),
            subtitle: Text("Tokyo, japan",style: TextStyle(
              color: Colors.white,
            ),),
            trailing: Icon(Icons.menu,color: Colors.white,),
          ),
          Image.asset("assets/images/Third.jpg"),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.favorite_border,size: 30,color: Colors.white,),
                  Icon(Icons.message,size: 30,color: Colors.white,),
                  Icon(Icons.near_me_outlined,size: 30,color: Colors.white,),
                ],
              ),
              Icon(Icons.bookmark_border,size: 30,color: Colors.white,),
            ],
          ),
          ListTile(
            visualDensity: VisualDensity.compact,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Third.jpg"),
            ),
            title: Text("Liked By craig_love and 44,686 others",style: TextStyle(
              color: Colors.white,
            ),),
          ),
          SizedBox(height: 10,),
          Text("joshua_i The game in japan was amazing and I want to share some photos",style: TextStyle(
            color: Colors.white,
          ),),
        ],
      ),
    );
  }
}
