import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _LoginState();
}

class _LoginState extends State<signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,size: 50,color: Colors.purple,),
        title: Text("Registration",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.access_time,size: 45, color: Colors.purple,),
          Icon(Icons.notifications,size: 45, color: Colors.purple,),
        ],
      ),
      body: Column(children: [
        Text("Welcome to Registration Form"),
        Text("Sign Up"),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                label: Text("Email"),
                hint: Text("12345@gmail.com"),
                suffixIcon: Icon(Icons.mark_email_unread),
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
            controller: usernameController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                label: Text("Username"),
                hint: Text("e.g: mustafa"),
                suffixIcon: Icon(Icons.person_outlined),
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
            controller: passwordController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                label: Text("Password"),
                hint: Text("123456578"),
                suffixIcon: Icon(Icons.lock),
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
            controller: confirmpasswordController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                label: Text("confirm Password"),
                hint: Text("123456578"),
                suffixIcon: Icon(Icons.lock),
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
            controller: contactController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                label: Text("contact"),
                hint: Text("xxxx-xxxxxxx"),
                suffixIcon: Icon(Icons.call),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none
                )
            ),
          ),
        ),
        ElevatedButton(onPressed: (){
          if(emailController.text.isEmpty){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Email is Empty")));
            return;
          }
          if(usernameController.text.isEmpty){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Username is Empty")));
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
          if(confirmpasswordController.text.isEmpty){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Confirm password is Empty")));
            return;
          }
          if(passwordController.text != confirmpasswordController.text){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("password does not match please try again")));
            return;
          }
          if(contactController.text.isEmpty) {
            ScaffoldMessenger.of(context)
                .showSnackBar(
                SnackBar(content: Text("Contact is Empty")));
            return;
          }
          if(contactController.text.length < 11 && contactController.text.length > 11) {
            ScaffoldMessenger.of(context)
                .showSnackBar(
                SnackBar(content: Text("contact must be 11 digit")));
            return;
          }
        },
            child: Text("Sign Up")),
        Text("Already have Account ?"),
        TextButton(onPressed: (){}, child: Text("Login"))
      ],),
    );
  }
}