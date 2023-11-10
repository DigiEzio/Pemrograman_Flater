import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> mytab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      icon: Icon(Icons.ac_unit_outlined),
    ),
    Tab(
      icon: Icon(Icons.ac_unit_sharp),
      text: "Tab 1",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      initialIndex: 2,
      length: mytab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Apps"),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            // indicatorColor: Colors.black,
            // indicatorWeight: 5,
            // indicatorPadding: EdgeInsets.all(10),
            indicator: BoxDecoration(
                color: Colors.amber,
                // borderRadius: BorderRadius.circular(50)
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black,
                  width: 5,
                ))),
            tabs: mytab,
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("Tab ", style: TextStyle(fontSize: 40)),
          ),
          Center(
            child: Text("Tab 2", style: TextStyle(fontSize: 40)),
          ),
          Center(
            child: Text("Tab 3", style: TextStyle(fontSize: 40)),
          ),
        ]),
      ),
    ));
    ;
  }
}
