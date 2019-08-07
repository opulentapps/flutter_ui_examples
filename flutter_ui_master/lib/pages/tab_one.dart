import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabOne extends StatefulWidget {
  TabOne();
  @override
  _TabOneState createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
