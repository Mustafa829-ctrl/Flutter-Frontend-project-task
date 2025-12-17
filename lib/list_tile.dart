import 'package:flutter/material.dart';
import 'package:fronted_project/models/list_tile_model.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _ListState();
}

class _ListState extends State<MyList> {
  List<ListTileModel> screenList = [
    ListTileModel(name: "Mustafa", message: "How are You?"),
    ListTileModel(name: "Ali", message: "Hello, I am Using Whatsapp"),
    ListTileModel(name: "Hassan", message: "Hello, How are You?"),
    ListTileModel(name: "Usman", message: "Hi, how are you?"),
    ListTileModel(name: "Saad", message: "Where are you?"),
    ListTileModel(name: "Mavia", message: "Who are you"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        centerTitle: false,
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
         Padding(
          padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hint: Text("Search"),
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),

       )
      ),
    ),
         Expanded(
           child: ListView.builder(
             itemCount: 6,
             itemBuilder: (BuildContext context, int index) {
               return
                   Card(
                     color: Colors.white,
                     child: ListTile(
                       leading: Icon(Icons.person),
                       title: Text(screenList[index].name.toString()),
                       subtitle: Text(screenList[index].message.toString()),
                       trailing: Text("18/12/2025"),
                     ),
                   );
             },

           ),
         ),
        ],
      ),
         floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.green,
         foregroundColor: Colors.black,
         onPressed: (){},
         child: Icon(Icons.add),
    ),
      );
  }
}