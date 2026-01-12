import 'package:flutter/material.dart';

class Assetsimage extends StatelessWidget {
  const Assetsimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.purple,),
        title: Text("Assets Image",style: TextStyle(
          backgroundColor: Colors.blue,
          fontWeight: FontWeight.w900,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.access_time,size: 50, color: Colors.purple,),
          Icon(Icons.notifications,size: 50,color: Colors.purple,),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("Title",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
          ),
          Text("Lorem ipsum is simply dummy text of the printing and typesetting industry."),
          SizedBox(height: 10),
          Row(
            children: [
              Image.asset('assets/images/Third.jpg',
                width: 200,
              ),
              SizedBox(width: 10),
              Image.asset("assets/images/Third.jpg",
              width: 200,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.favorite_border,),
                  Text("Favourite"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.comment),
                  Text("Comment"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.bookmark_border),
                  Text("Bookmark"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.person),
                  Text("Profile"),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text("Title", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),),
          Row(
            children: [
              Text("Lorem ipsum is simply dummy text of the printing and typesetting industry."),
              Image.asset("assets/images/Third.jpg",
              width: 200,
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      )
    );
  }
}
