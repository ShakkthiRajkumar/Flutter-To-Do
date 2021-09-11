import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //provides the TASKDATA required by widgets across the app.
      //KEEPING THE STATE OF THE TASK PROVIDER HIGH SO THAT IT CAN BE USED BY THE BOTTOM WIDGETS
      create: (_) =>
          TaskData(), //returns the object (i.e TASKDATA) to all the widgets that listen to it
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
