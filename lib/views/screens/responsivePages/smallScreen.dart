import 'package:flutter/material.dart';

import '../InCompleteTask.dart';
import '../allTaskScreen.dart';
import '../completeTask.dart';

class SmallScreen extends StatefulWidget {
  @override
  State<SmallScreen> createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  refreshPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Center(
        child: PageView(
          children: [
            allTaskScreen(refreshPage),
            CompleteTaskScreen(refreshPage),
            InCompleteTaskScreen(refreshPage),
          ],
        ),
      ),
    );
  }
}
