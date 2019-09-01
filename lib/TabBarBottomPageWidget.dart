import 'package:flutter/material.dart';
import 'TabBarWidget.dart';

import 'package:flutter_xhy_five/TabBarPageFirst.dart';
import 'package:flutter_xhy_five/TabBarPageSecond.dart';
import 'package:flutter_xhy_five/TabBarPageThree.dart';
import 'package:flutter_xhy_five/TabBarPageFour.dart';

class TabBarBottomPageWidget extends StatefulWidget {
  @override
  _TabBarBottomPageWidgetState createState() => _TabBarBottomPageWidgetState();
}

class _TabBarBottomPageWidgetState extends State<TabBarBottomPageWidget> {
  final PageController topPageControl = PageController();
  
  final List<String> tab = ["动态", "趋势", "中心", "我的"];
  
  @override
  Widget build(BuildContext context) {
    return TabBarWidget(
      type: TabBarWidget.BOTTOM_TAB,
      ///渲染tab
      tabItems: _renderTab(),
      ///渲染页面
      tabViews: _renderPage(),
      topPageControl: topPageControl,
      backgroundColor: Colors.black45,
      indicatorColor: Colors.red,
      title: Text("Flutter"),
    );
  }
  
  _renderTab() {
    List<Widget> list = List();
    for (int i = 0; i < tab.length ; i ++) {
      list.add(FlatButton(onPressed: (){
        topPageControl.jumpTo(MediaQuery.of(context).size.width * i);
      }, child: Text(
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
    ];
  }
  
}