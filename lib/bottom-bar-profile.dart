import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Profile", style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),),
        actions: [
          Icon(Icons.notifications,color: Colors.white,),
          Icon(Icons.menu,color: Colors.white,),
        ],
      ),
     body:  Center(
        child: Column(
          children: [
            Icon(Icons.person_2_rounded, size: 70,),
            Text("Name",style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
            ),
            Text("Abdullah Rehman"),
            Text("Academy",style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
            ),
            Text("The Sky Coaching"),
            Text("University",style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
            ),
            Text("FUUAT Islamabad"),
            Text("City",style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
            ),
            Text("Rawalpindi"),
            Text("Contact",style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
            ),
            Text("03449117547"),
            Text("Address",style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
            ),
            Text("Pakistan"),
          ],
        ),
      ),
    );
  }
}
