import 'package:flutter/material.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text("Pop Up Menu", style: TextStyle(fontWeight: FontWeight.w900,),),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("New group"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("New community"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Broadcast list"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Linked device"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Read all"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Starred"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Settings"))),
                PopupMenuItem(child: TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Logout"))),
              ];
            },)
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
          Container(
              height: 80,
              color: Colors.red,
              child: DrawerHeader(child: Text("My APP Drawer",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),))),
          ListTile(
            title: Text("Home"),),
          ListTile(
            title: Text("Settings"),),
          ListTile(
            title: Text("Chats"),),
          ListTile(
            title: Text("Profile"),),
          ListTile(
            title: Text("Notifications"),),
          ListTile(
            onTap: (){
              Navigator.pop(context);
            },
            title: Text("Logout"),),

        ],),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text("Total Videos",style: TextStyle(
                  ),),
                  trailing: Icon(Icons.arrow_forward_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text("Total Images",style: TextStyle(
                  ),),
                  trailing: Icon(Icons.arrow_forward_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text("Total Likes",style: TextStyle(
                  ),),
                  trailing: Icon(Icons.arrow_forward_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text("Total Comments",style: TextStyle(
                  ),),
                  trailing: Icon(Icons.arrow_forward_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text("Total Users",style: TextStyle(
                  ),),
                  trailing: Icon(Icons.arrow_forward_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}