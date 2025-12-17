import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.arrow_back),
        title: Text("Nested Row Column"),
        centerTitle: true,
        actions: [
          Icon(Icons.access_time),
          Icon(Icons.notifications),
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Lorem Ipsum",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),),
              Text(
                  "Lorem ipsum is simply dummy text of the printing and"
                      "typesetting industry. Lorem ipsum has been the industry's "
                      "standard dummy text ever since the 1500s, when an unknown "
                      "printer took a galley of type and scrambled it to make a type"
                      "specimen book"),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite_border),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.message),
                      Icon(Icons.access_time),
                    ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.settings),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children : [
                          Icon(Icons.home),
                          Row(
                            children: [

                              Icon(Icons.mail),
                            ],
                          ),

                            ],
                          ),
                        ],
                      ),

                  Icon(Icons.lock),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.bookmark_border),
                      Icon(Icons.call),
                    ],
                  ),
                  Icon(Icons.person),
                ],)
            ],),
        ),
      ),
    );
  }
}