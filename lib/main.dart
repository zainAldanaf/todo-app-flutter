import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/views/screens/allTaskScreen.dart';
import 'package:todoapp/views/screens/mainTasksScreen.dart';
import 'package:todoapp/views/screens/responsivePages/largeScreem.dart';
import 'package:todoapp/views/screens/responsivePages/smallScreen.dart';

void main() {
  runApp(MaterialApp(home: ResponsivePage()));
}

class ResponsivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 500
        ? LargeScreen()
        : MainTasksScreen();
  }
}
