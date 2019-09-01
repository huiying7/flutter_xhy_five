import 'package:flutter/material.dart';

import 'package:flutter_xhy_five/TabBarPageFirst.dart';
import 'package:flutter_xhy_five/TabBarPageSecond.dart';
import 'package:flutter_xhy_five/TabBarPageThree.dart';
import 'package:flutter_xhy_five/TabBarPageFour.dart';
import 'package:flutter_xhy_five/TabBarWidget.dart';

class TabBarPageWidget extends StatefulWidget {
  @override
  _TabBarPageWidgetState createState() => _TabBarPageWidgetState();
}

class _TabBarPageWidgetState extends State<TabBarPageWidget> {
  final PageController topPageControl = PageController();

  final List<String> tab = ["111", "222", "333", "444", "555", "666", "777", "888"];

  _renderTab() {
    List<Widget> list = List();
    for (int i = 0; i < tab.length; i++) {
      list.add(FlatButton(
          onPressed: () {
            topPageControl.jumpTo(MediaQuery.of(context).size.width * i);
          },
          child: Text(
            tab[i],
            maxLines: 1,
          )));
    }
    return list;
  }
  
  _renderPage() {
    return [
      TabBarPageFirst(),
      TabBarPageSecond(),
      TabBarPageThree(),
      TabBarPageFour(),
      TabBarPageFirst(),
      TabBarPageSecond(),
      TabBarPageThree(),
      TabBarPageFour(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return TabBarWidget(
      type: TabBarWidget.TOP_TAB,
      tabItems: _renderTab(),
      tabViews: _renderPage(),
      topPageControl: topPageControl,
      backgroundColor: Colors.lightBlue,
      indicatorColor: Colors.white,
      title: Text("Test"),
    );
  }
}
