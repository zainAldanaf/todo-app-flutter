import 'package:flutter/material.dart';
import 'package:todoapp/views/screens/InCompleteTask.dart';
import 'package:todoapp/views/screens/allTaskScreen.dart';
import 'package:todoapp/views/screens/completeTask.dart';

class MainTasksScreen extends StatefulWidget {
  @override
  State<MainTasksScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<MainTasksScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;
  refreshPage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text("zain"),
            accountEmail: Text("zain12.issa@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 23, 43, 76),
            ),
          ),
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
      appBar: AppBar(title: Text("Todo Application")),
      body: PageView(
        controller: pageController,
        children: [
          allTaskScreen(refreshPage),
          CompleteTaskScreen(refreshPage),
          InCompleteTaskScreen(refreshPage),
        ],
      ),
    );
  }
}
