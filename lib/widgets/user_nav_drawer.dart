import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charusat_blood_donor/pages/edit_profile.dart';

class UserNavDrawer extends StatelessWidget {

  final String uid;
  UserNavDrawer({this.uid});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img/edit_profile.png'),
                  radius: 30.0,
                ),
                SizedBox(height: 10.0,),
                Text('Profile',
                  style: TextStyle(fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('User Profile'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile(uid: uid)), ),
            },
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
