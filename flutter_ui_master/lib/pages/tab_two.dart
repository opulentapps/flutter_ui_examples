import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabTwo extends StatefulWidget {
  TabTwo();
  @override
  _TabTwoState createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
