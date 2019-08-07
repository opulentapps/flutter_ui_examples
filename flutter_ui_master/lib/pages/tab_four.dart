import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabFour extends StatefulWidget {
  TabFour();
  @override
  _TabFourState createState() => _TabFourState();
}

class _TabFourState extends State<TabFour> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
