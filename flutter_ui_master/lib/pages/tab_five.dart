import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabFive extends StatefulWidget {
  TabFive();
  @override
  _TabFiveState createState() => _TabFiveState();
}

class _TabFiveState extends State<TabFive> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellowAccent,
      ),
    );
  }
}
