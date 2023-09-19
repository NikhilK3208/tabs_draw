import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home Tabs'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.car_crash),
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.car_crash),
              Icon(Icons.directions_transit),
              Icon(Icons.bus_alert)
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.greenAccent),
                    child: Text("Drawer Header")),
                ListTile(
                  title: Text("home"),
                ),
                ListTile(
                  title: Text("car"),
                ),
                ListTile(
                  title: Text("train"),
                ),
                ListTile(
                  title: Text("bus"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
