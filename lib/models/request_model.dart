
import 'package:flutter/material.dart';

class RequestModel{

  static int reqId = 0;
  String bloodGrp;
  int quantity;
  String isUrgent;
  DateTime currentDate;
  TimeOfDay currentTime;

  RequestModel({this.bloodGrp, this.isUrgent, this.quantity, this.currentDate, this.currentTime});
}