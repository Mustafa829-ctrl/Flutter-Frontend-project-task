import 'package:flutter/material.dart';

class Networkimage extends StatelessWidget {
  const Networkimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,),
        title: Text("Network Image", style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white70,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.access_time, size: 50, color: Colors.purple,),
          Icon(Icons.notifications, size: 50, color: Colors.purple,),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Second.jpg"),

              ),
              title: Text("Muhammad Mustafa", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),),
              subtitle: Text("19-12-2025"),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJeJGPaGCkFnSb_1-NDwNhvcJA58-WSctYfw&s',
              width: 200,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 20),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: TextStyle(
                fontSize: 20,
              ),),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite_border),
                Icon(Icons.comment),
                Icon(Icons.bookmark_border),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: (){},
        icon: Icon(Icons.add),
        label: Text("Add"),
      ),
    );
   }
  }