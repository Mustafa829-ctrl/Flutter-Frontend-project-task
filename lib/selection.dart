import 'package:flutter/material.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _LoginState();
}

class _LoginState extends State<Selection> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  String selectedGender = "Male";
  List<String> selectedSkills = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
        title: Text("Register",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),),
        centerTitle: true,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.access_time,size: 45, color: Colors.white,),
          Icon(Icons.notifications,size: 45, color: Colors.white,),
        ],
      ),
      body: Column(
        children: [
          Text("Welcome to My App",style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w900
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  label: Text("Username"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  label: Text("Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  label: Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: contactController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  label: Text("contact"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black),
                  )
              ),
            ),
          ),
              RadioListTile(
                title: Text("Male"),
                value: "Male",
                groupValue: selectedGender,
                onChanged: (value){
                  setState(() {
                    selectedGender = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text("Female"),
                value: "Female",
                groupValue: selectedGender,
                onChanged: (value){
                  setState(() {
                    selectedGender = value!;
                  });
                },
              ),
              CheckboxListTile(
                  title: Text("Flutter"),
                  value: selectedSkills.contains("Flutter"),
                  onChanged: (value){
                    setState(() {
                      if(value!){
                        selectedSkills.add("Flutter");
                      }else {
                        selectedSkills.remove("Flutter");
                      }
                    });
                  }),
              CheckboxListTile(
                  title: Text("Flutter"),
                  value: selectedSkills.contains("Flutter"),
                  onChanged: (value){
                    setState(() {
                      if(value!){
                        selectedSkills.add("Flutter");
                      }else {
                        selectedSkills.remove("Flutter");
                      }
                    });
                  }),
              CheckboxListTile(
                  title: Text("Firebase"),
                  value: selectedSkills.contains("Firebase"),
                  onChanged: (value){
                    setState(() {
                      if(value!){
                        selectedSkills.add("Firebase");
                      }else {
                        selectedSkills.remove("Firebase");
                      }
                    });
                  }),
          Text("$selectedSkills"),
          ElevatedButton(onPressed: (){
            if(usernameController.text.isEmpty){
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Username is Empty")));
              return;
            }
            if(emailController.text.isEmpty){
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Email is Empty")));
              return;
            }
            if(passwordController.text.isEmpty){
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Password is Empty")));
              return;
            }
            if(passwordController.text.length < 8){
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
              return;
            }
            if(contactController.text.isEmpty) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(
                  SnackBar(content: Text("Contact is Empty")));
              return;
            }
            if(contactController.text.length < 11 || contactController.text.length > 11) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(
                  SnackBar(content: Text("contact must be 11 digit")));
              return;
            }
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You!"),
                  content: Text("Go to Login Screen ?"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("NO")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Yes")),
                  ],
                );
              }, );
          },
              child: Text("Sign Up")
          ),
        ],),
    );
  }
}