import 'package:flutter/material.dart';

import '../../../data/data_source.dart';
import '../InCompleteTask.dart';
import '../allTaskScreen.dart';
import '../completeTask.dart';
import '../widget/taskWidget.dart';

class LargeScreen extends StatefulWidget {
  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;
  refreshPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo App"),
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(children: [
                ListTile(
                  onTap: () {
                    pageController.jumpToPage(0);
                    Navigator.of(context).pop();
                  },
                  title: Text("All task"),
                  subtitle: Text("Go to complete Task"),
                  leading: Icon(Icons.list),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    pageController.jumpToPage(1);
                    Navigator.of(context).pop();
                  },
                  title: Text("completed task"),
                  subtitle: Text("Go to inComplete Task"),
                  leading: Icon(Icons.done),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    pageController.jumpToPage(2);
                    Navigator.of(context).pop();
                  },
                  title: Text("incompleted task"),
                  subtitle: Text("Go to All Task"),
                  leading: Icon(Icons.cancel),
                  trailing: Icon(Icons.arrow_forward_ios),
                )
              ]),
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  allTaskScreen(refreshPage),
                  CompleteTaskScreen(refreshPage),
                  InCompleteTaskScreen(refreshPage),
                ],
              ),
            ),
          ],
        ));
  }
}
