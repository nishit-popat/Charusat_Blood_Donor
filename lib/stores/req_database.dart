import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:charusat_blood_donor/models/request_model.dart';
import 'package:flutter/material.dart';

class ReqDatabase{

  final firestoreInstance = Firestore.instance;

  Future addRequest(String bloodGrp, int quantity, String isUrgent, String currentDate, String currentTime) async{
    return await firestoreInstance.collection("requests").document().setData(
        {
          "bloodGrp" : bloodGrp,
          "quantity" : quantity,
          "isUrgent" : isUrgent,
          "currentDate": currentDate,
          "currentTime": currentTime,
        });
  }
}