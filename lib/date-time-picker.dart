import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePicker> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController authornameController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Date Time"),
        actions: [
          Icon(Icons.access_time,color: Colors.purpleAccent,),
          Icon(Icons.notifications_none,color: Colors.purpleAccent,),
        ],
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Create a Post", style: TextStyle(
                fontSize: 20,
              ),),
              Text("Title", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.red,
              ),),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    label: Text("Title"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black12),
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    label: Text("Description"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black12),
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: authornameController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    label: Text("Author Name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black12),
                    )
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Column(children: [
                  Text(
                      DateFormat.yMMMMEEEEd().format(selectedDate,),
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(),
                      shape: BoxShape.rectangle,
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black ),
                        onPressed: (){
                      showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2300))
                          .then((value){
                        setState(() {
                          selectedDate = value!;
                          }  );
                        } );
                          },
                        child: Text("Set Date",style: TextStyle(
                          color: Colors.white,
                     ), )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                      selectedTime == null ? "No Time Selected":
                      selectedTime!.format(context).toString(),
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(),
                      shape: BoxShape.rectangle,
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black ),
                        onPressed: (){
                      showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now())
                          .then((value){
                        setState(() {
                          selectedTime = value;
                        });
                      });
                    }, child: Text("Set Time", style: TextStyle(
                      color: Colors.white,
                    ),)),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(),
                      shape: BoxShape.rectangle,
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black ),
                        onPressed: (){
                          if(titleController.text.isEmpty){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text("Title is Empty")));
                            return;
                          }
                          if(descriptionController.text.isEmpty){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text("Description is Empty")));
                            return;
                          }
                          if(authornameController.text.isEmpty){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text("Author name is Empty")));
                            return;
                          }
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Done"),
                                content: Text("Posted Successfully"),
                                actions: [
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("Back")),
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("OK")),
                                ],
                              );
                            }, );
                        }, child: Text("Post", style: TextStyle(
                      color: Colors.white,
                    ),),
                        ),
                  ),
                ],),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
