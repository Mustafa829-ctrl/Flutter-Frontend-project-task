import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: Icon(Icons.arrow_back),
          title: Text("Tab Bar", style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),),
          centerTitle: true,
          actions: [
            Icon(Icons.access_time),
            Icon(Icons.notifications),
          ],
          bottom: PreferredSize(preferredSize: Size.fromHeight(100),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab( text: "Home",),
                        Tab(text: "Profile",),
                        Tab(text: "Settings",),
                      ]),
                ),
              ),
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person_2_rounded),
                  title: Text("Muhammad Mustafa", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),),
                  subtitle: Text("10-10-2025"),
                ),
                SizedBox(height: 20,),
                Image.asset("assets/images/second.jpg"),
                SizedBox(height: 20,),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.favorite_border),
                    Icon(Icons.message),
                    Icon(Icons.bookmark_border),
                  ],
                ),
            ],
            ),),
          Center(
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
          Center(
            child: Column(
              children: [
                Text("Settings", style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),),
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
        ]),
      ),
    );
  }
}
