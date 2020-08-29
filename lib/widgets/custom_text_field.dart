import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_and_log_in/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function onChange;
  final Function validator;
  final Icon icon;
 final keyBoardtype;

  CustomTextField({
   @required this.hintText,
   @required this.onChange,
    this.validator,
     this.icon,
    this.keyBoardtype,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        child: Card(
          child: ListTile(
            leading: icon,
            title: TextFormField(
              keyboardType: keyBoardtype,
              validator: validator,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                hintStyle : TextStyle(
                  color : Colors.grey,
                  fontSize: 18.0,
                ),
                hintText: hintText,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              onChanged: onChange,
            ),
          ),
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 7.0, color: Colors.grey.withOpacity(.2), offset: Offset(1.5, 2.0)),
          ],
        ),
      ),
    );
  }
}
