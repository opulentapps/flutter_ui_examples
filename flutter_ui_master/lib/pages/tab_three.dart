import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabThree extends StatefulWidget {
  TabThree();
  @override
  _TabThreeState createState() => _TabThreeState();
}

class _TabThreeState extends State<TabThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Container(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text('BACK'),
            ),
          ),
        ),
      ),
    );
  }
}
