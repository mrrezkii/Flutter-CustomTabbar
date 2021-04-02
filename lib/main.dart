import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabbar = (TabBar(
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(top: BorderSide(color: Colors.purple, width: 5))),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "Comments",
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "Computer",
        ),
      ],
    ));
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contoh Tab Bar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabbar.preferredSize.height),
                child: Container(color: Colors.amber, child: myTabbar)),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
