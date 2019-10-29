import 'package:flutter/material.dart';
import 'package:uts/bike_view.dart';
import 'package:uts/car_view.dart';
import 'package:uts/transit_view.dart';

class HomePage extends StatelessWidget {
  final Color backgroundColor = Color(0xFF4A4A58);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        child: Scaffold(
          appBar: new AppBar(
            backgroundColor: backgroundColor,
            title: Text("Tugas UTS"),
            actions: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[CarView(), TransitView(), BikeView()],
          ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text("mitsuki4433@gmail.com"),
                  accountEmail: Text("DRAJAT JATMIKO"),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: AssetImage("img/miko.jpeg"),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: new BoxDecoration(color: Color(0xFF4A4A58)),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Home"),
                    leading: Icon(
                      Icons.home,
                      color: Color(0xFF4A4A58),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Account"),
                    leading: Icon(
                      Icons.person,
                      color: Color(0xFF4A4A58),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Favorite"),
                    leading: Icon(
                      Icons.favorite,
                      color: Color(0xFF4A4A58),
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Settings"),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("About"),
                    leading: Icon(
                      Icons.help,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        length: 3,
      ),
    );
  }
}
