import 'package:flutter/material.dart';
import 'package:todoapp/data/data_source.dart';
import 'package:todoapp/views/screens/widget/taskWidget.dart';

class InCompleteTaskScreen extends StatelessWidget {
  Function function;
  InCompleteTaskScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:
          DataSource.tasks.where((element) => !element.isComplete).length,
      itemBuilder: (context, index) {
        return TaskWidget(
            DataSource.tasks
                .where((element) => !element.isComplete)
                .toList()[index],
            function);
      },
    );
  }
}
