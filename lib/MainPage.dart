import 'package:flutter/material.dart';

import 'package:flutter_xhy_five/TabBarPageWidget.dart';
import 'package:flutter_xhy_five/TabBarBottomPageWidget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TabBarPageWidget()));
            },
            child: Text("Top Tab"),
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TabBarBottomPageWidget()));
            },
            child: Text("Bottom Tab"),
          ),
        ],
      ),
    );
  }
}