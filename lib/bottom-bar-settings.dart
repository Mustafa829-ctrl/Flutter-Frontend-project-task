import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Setting", style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),),
        actions: [
          Icon(Icons.notifications,color: Colors.white,),
          Icon(Icons.menu,color: Colors.white,),
        ],
      ),
      body:
      Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.red,
                    prefixIcon: Icon(Icons.local_post_office),
                    label: Text("Email"),
                    suffixIcon: Icon(Icons.arrow_forward_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green,
                    prefixIcon: Icon(Icons.person),
                    label: Text("Username"),
                    suffixIcon: Icon(Icons.arrow_forward_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: Icon(Icons.lock_outlined),
                    label: Text("Password"),
                    suffixIcon: Icon(Icons.arrow_forward_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    prefixIcon: Icon(Icons.call),
                    label: Text("CONTACT"),
                    suffixIcon: Icon(Icons.arrow_forward_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    prefixIcon: Icon(Icons.bookmark_border),
                    label: Text("SAVED"),
                    suffixIcon: Icon(Icons.arrow_forward_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
