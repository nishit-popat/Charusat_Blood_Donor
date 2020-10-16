import 'package:flutter/material.dart';
import 'package:charusat_blood_donor/widgets/blood_thumbnail.dart';

class RecentUpdateListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white30,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BloodGroupThumbnailWidget(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 10.0),
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                child: Text(
                  'Accepted/Pending     24/10/2020',
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
