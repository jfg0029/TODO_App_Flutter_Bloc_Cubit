import 'package:flutter/material.dart';

class TodoHeaderWidget extends StatelessWidget {
const TodoHeaderWidget({ super.key });

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("TAREAS", style: TextStyle(fontSize: 40.0),
        ),
        Text("Tareas restantes"),
      ],
    );
  }
}