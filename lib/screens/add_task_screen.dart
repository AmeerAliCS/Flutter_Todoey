import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTextTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Color(0xff757575),
       child: Container(
         padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
        ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Text('Add Task', style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),textAlign: TextAlign.center,),
             TextField(
               autofocus: true,
               textAlign: TextAlign.center,
               onChanged: (newText){
                 newTextTitle = newText;
               },

             ),
             SizedBox(height: 10.0,),
             FlatButton(
               child: Text('Add', style: TextStyle(color: Colors.white, fontSize: 20),),
               color: Colors.lightBlueAccent,
               onPressed: (){
                 Provider.of<TaskData>(context,listen: false).addTask(newTextTitle);
                 Navigator.of(context).pop();
               },
             ),
           ],
         ),
      ),
    );
  }
}
