import 'package:flutter/material.dart';

class UserNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(20.0),
            child: Text('Profile',
            style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('User Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.adjust),
            title: Text('Blood Group'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Request History'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact Us'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
