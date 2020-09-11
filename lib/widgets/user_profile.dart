import 'package:flutter/material.dart';
import 'package:registration_and_log_in/widgets/custom_text_field.dart';
import 'package:registration_and_log_in/constants.dart';
class User_Profile extends StatefulWidget {
  @override
  _User_ProfileState createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("User Profile"),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/user_profile.jpeg"),
                  radius: 25.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    CustomTextField(
                      icon: Icon(Icons.person, color: Colors.black54,),
                      hintText: 'Nishit Popat',
                      onChange: (value) {},
                    ),
                    CustomTextField(
                      hintText: 'Disease(If any)',
                      icon: Icon(Icons.accessibility,color: Colors.black54,),
                      onChange: (value) {},
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
