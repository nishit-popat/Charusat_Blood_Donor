import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration_and_log_in/registration_form.dart';
import 'package:registration_and_log_in/widgets/custom_text_field.dart';
import 'constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "images/blood_donation.jpg",
          ),
          fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 400.0,),
                CustomTextField(
                  hintText: 'Enter Phone Number',
                  keyBoardtype: TextInputType.number,
                  validator: (value) {},
                  onChange: (value) {},
                ),
                SizedBox(height:40.0,),
                Container(
                  decoration: kGradientButtonDecoration.copyWith(borderRadius: BorderRadius.circular(23.0)),
                  width: 130.0,
                  child: FlatButton(
                    child: Text('Log In',
                    style: kSubmitButtonTextSyle,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => RegistrationForm()
                      ),);
                    },
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
