import 'package:flutter/material.dart';
import 'package:todo_app_cubit/widgets/show_todos_widget.dart';
import 'package:todo_app_cubit/widgets/todo_header_widget.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Estas son las tareas"), backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TodoHeaderWidget(),
            SizedBox(height: 20,),
            ShowTodosWidget(),
            
          ],
        ),
      )
    );
  }
}