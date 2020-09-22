import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserDatabase{
  final firestoreInstance = Firestore.instance;

  Future updateUserData(String name, String gender, String email, String birthDate, String bloodGroup, String city, String disease) async{

    FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();

    return await firestoreInstance.collection("users").document(firebaseUser.uid).setData(
        {
          "name" : name,
          "birthDate" : birthDate,
          "email" : email,
          "bloodGroup": bloodGroup,
          "city": city,
          "disease": disease,
        });


  }


}



