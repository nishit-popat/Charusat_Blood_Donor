import 'package:flutter/material.dart';
import 'package:registration_and_log_in/constants.dart';
import 'package:intl/intl.dart';
import 'package:registration_and_log_in/widgets/custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {

  List<String> gender = ["Male", "Female", "Other"];
  var _bloodGroups = [
    "A+ve",
    "A-ve",
    "AB+ve",
    "AB-ve",
    "B+ve",
    "B-ve",
    "O+ve",
    "O-ve",
  ];
  final dateFormat = DateFormat.yMd();
  final _formKey = GlobalKey<FormState>();
  String select;
  DateTime birthDate;
  String bloodGroup;
  String _currentSelectedBloodGroup;

  //Radio Button Widget Builder
  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: primary_color,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
            });
          },
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  //Date Picker Widget
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (picked != null && picked != birthDate) {
      setState(() {
        birthDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration Form',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
              ),
              child: Image.asset("images/bd.jpeg",),
            ),
          ),
          Expanded(
          flex: 3,
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(14.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CustomTextField(
                        icon: Icon(Icons.person, color: Colors.black54,),
                        hintText: 'Enter Full Name',
                        onChange: (value) {},
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,0,0,0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Gender',
                              textAlign: TextAlign.left,
                              style: kFormTextStyle.copyWith(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          addRadioButton(0, 'Male'),
                          addRadioButton(1, 'Female'),
                          addRadioButton(2, 'Others'),
                        ],
                      ),
                      CustomTextField(
                        icon: Icon(Icons.email,color: Colors.black54,),
                        hintText: 'Email',
                        onChange: (value) {},
                        validator: (value) {},
                        keyBoardtype: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 15),
                      CustomTextField(
                        icon: Icon(Icons.phone,color: Colors.black54,),
                        hintText: 'Mobile Number',
                        onChange: (value) {},
                        validator: (value) {},
                        keyBoardtype: TextInputType.phone,
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 19.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.calendar_today, color: Colors.black54,),
                              Text(
                                birthDate == null
                                    ? 'Select BirthDate'
                                    : DateFormat.yMd().format(birthDate),
                                style: kFormTextStyle,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(23.0),
                                ),
                                child: FlatButton(
                                  child: Text(
                                    'Edit',
                                    style: kFormTextStyle,
                                  ),
                                  onPressed: () {
                                    return _selectDate(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8.0,
                                  color: Colors.grey.withOpacity(.4),
                                  offset: Offset(1.5, 2.0)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 19.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: FormField<String>(
                              builder: (FormFieldState<String> state) {
                                return InputDecorator(
                                  decoration: InputDecoration(
                                      labelStyle: kFormTextStyle,
                                      labelText: 'Blood Group',
                                      errorStyle: TextStyle(color: Colors.redAccent, fontSize: 18.0),
                                      hintText: 'Please select Blood Group',
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                      ),
                                  isEmpty: _currentSelectedBloodGroup == '',
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: _currentSelectedBloodGroup,
                                      isDense: true,
                                      onChanged: (String newValue) {
                                        setState(() {
                                          _currentSelectedBloodGroup = newValue;
                                          state.didChange(newValue);
                                        });
                                      },
                                      items: _bloodGroups.map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8.0,
                                  color: Colors.grey.withOpacity(.4),
                                  offset: Offset(1.5, 2.0)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      CustomTextField(
                        hintText: 'City',
                        icon: Icon(Icons.location_city,color: Colors.black54,),
                        onChange: (value) {},
                      ),
                      SizedBox(height: 15),
                      CustomTextField(
                        hintText: 'Disease(If any)',
                        icon: Icon(Icons.accessibility,color: Colors.black54,),
                        onChange: (value) {},
                      ),
                      SizedBox(height: 25),
                      Center(
                        child: Container(
                          decoration: kGradientButtonDecoration.copyWith(borderRadius: BorderRadius.circular(23.0)),
                          width: 130.0,
                          child: FlatButton(
                            child: Text(
                              'Submit',
                              style: kSubmitButtonTextSyle,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
