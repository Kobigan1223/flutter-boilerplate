import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.cyan[400],
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 40, bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/mydp.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'Dhanushan',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                Text(
                  'Danuthasan08@gmail.com',
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => Navigator.pushNamed(context, '/settings'),
          ),
          ListTile(
            leading: Icon(Icons.text_format),
            title: Text(
              'Leagal & Privicy',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
