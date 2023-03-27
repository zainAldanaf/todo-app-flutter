import 'package:flutter/material.dart';
import 'package:todoapp/data/data_source.dart';
import 'package:todoapp/views/screens/widget/taskWidget.dart';

class allTaskScreen extends StatelessWidget {
  Function function;
  allTaskScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DataSource.tasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(DataSource.tasks[index], function);
      },
    );
  }
}
