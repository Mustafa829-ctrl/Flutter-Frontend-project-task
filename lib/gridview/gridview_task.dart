import 'package:flutter/material.dart';
import 'package:fronted_project/models/gridviewmodel.dart';

class GridviewTask extends StatefulWidget {
  const GridviewTask({super.key});

  @override
  State<GridviewTask> createState() => _GridviewTaskState();
}

class _GridviewTaskState extends State<GridviewTask> {
  final List<Gridviewmodel> GridviewmodelList = [
    Gridviewmodel(title: 'All', icon: Icons.grid_view),
    Gridviewmodel(title: 'Weather', icon: Icons.cloud),
    Gridviewmodel(title: 'Business', icon: Icons.business),
    Gridviewmodel(title: 'Entmt', icon: Icons.movie),
    Gridviewmodel(title: 'General', icon: Icons.check),
    Gridviewmodel(title: 'Health', icon: Icons.favorite_border),
    Gridviewmodel(title: 'Lifestyle', icon: Icons.style),
    Gridviewmodel(title: 'Science', icon: Icons.science),
    Gridviewmodel(title: 'Sports', icon: Icons.sports_soccer),
    Gridviewmodel(title: 'Tech', icon: Icons.computer),
    Gridviewmodel(title: 'World', icon: Icons.public),
    Gridviewmodel(title: 'Food', icon: Icons.restaurant),
    Gridviewmodel(title: 'Travel', icon: Icons.flight),
    Gridviewmodel(title: 'Games', icon: Icons.games),
    Gridviewmodel(title: 'Agriculture', icon: Icons.agriculture),
    Gridviewmodel(title: 'Weird', icon: Icons.sentiment_very_dissatisfied),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("GridView",style: TextStyle(
          backgroundColor: Colors.blue,
          fontWeight: FontWeight.w900,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.access_time,size: 30,),
          Icon(Icons.alarm,size: 30,),
        ],

      ),
      body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              mainAxisExtent: 30,
            ),
            itemCount: GridviewmodelList.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                leading: Icon(GridviewmodelList[index].icon),
                title: Text(GridviewmodelList[index].title),
                trailing: Icon(Icons.star),
              );
            },
          ),
      ),
    );
  }
}
