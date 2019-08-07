import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_master/pages/tab_five.dart';
import 'package:flutter_ui_master/pages/tab_four.dart';
import 'package:flutter_ui_master/pages/tab_one.dart';
import 'package:flutter_ui_master/pages/tab_three.dart';
import 'package:flutter_ui_master/pages/tab_two.dart';
import 'package:flutter_ui_master/slide_route.dart';

class MainNavigationBar extends StatefulWidget {
  @override
  _MainNavigationBarState createState() => _MainNavigationBarState();
}

PageController pageController;

class _MainNavigationBarState extends State<MainNavigationBar> {
  int currentIndex = 0;
  int index = 0;
  int _page = 0;
  String lastSelected = 'TAB: 0';

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  void navigationTapped(int page) {
    //Animating Page
    // pageController.jumpToPage(page);
    if (page == 2) {
      Navigator.push(
        context,
        SlideTopRoute(
          page: TabThree(),
        ),
      );

      print('slide transition worked');
    } else {
      pageController.jumpToPage(page);
    }
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: new PageView(
        children: [
          new Container(
            color: Colors.white,
            child: new TabOne(),
          ),
          new Container(
            color: Colors.white,
            child: new TabTwo(),
          ),
          new Container(
            color: Colors.white,
            child: new TabThree(),
          ),
          new Container(
            color: Colors.white,
            child: new TabFour(),
          ),
          new Container(
            color: Colors.white,
            child: new TabFive(),
          ),
        ],
        controller: pageController,
        physics: new NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: new SizedBox(
        height: _height * 0.090,
        child: new CupertinoTabBar(
          border: Border(
            top: BorderSide(
              color: Colors.black.withOpacity(0.050),
            ),
          ),
          activeColor: Colors.orange,
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: new Padding(
                  padding: EdgeInsets.only(top: _height * 0.010),
                  child: new Icon(
                    Icons.format_line_spacing,
                    color: (_page == 0) ? Colors.redAccent : Colors.black,
                    size: 24,
                  ),
                ),
                title: new Container(height: 0.0),
                backgroundColor: Colors.white),
            new BottomNavigationBarItem(
                icon: new Padding(
                  padding: EdgeInsets.only(top: _height * 0.010),
                  child: new Icon(
                    Icons.device_hub,
                    color: (_page == 1) ? Colors.redAccent : Colors.black,
                    size: 24,
                  ),
                ),
                title: new Container(height: 0.0),
                backgroundColor: Colors.white),
            new BottomNavigationBarItem(
                icon: SizedBox(
                  width: _width * 0.13,
                  child: Container(
                    padding: EdgeInsets.only(
                      top: _height * 0.008,
                    ),
                    child: Image.asset(
                      'assets/plus_icon_bb.png',
                      width: _width * 0.65,
                    ),
                  ),
                ),
                title: new Container(height: 0.0),
                backgroundColor: Colors.white),
            new BottomNavigationBarItem(
                icon: new Padding(
                  padding: EdgeInsets.only(top: _height * 0.010),
                  child: new Icon(
                    Icons.landscape,
                    color: (_page == 3) ? Colors.redAccent : Colors.black,
                    size: 24,
                  ),
                ),
                title: new Container(height: 0.0),
                backgroundColor: Colors.white),
            new BottomNavigationBarItem(
                icon: new Padding(
                  padding: EdgeInsets.only(top: _height * 0.010),
                  child: new Icon(
                    Icons.person_pin,
                    size: 24,
                    color: (_page == 4) ? Colors.redAccent : Colors.black,
                  ),
                ),
                title: new Container(height: 0.0),
                backgroundColor: Colors.white),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}
