import 'package:flutter/material.dart';
import 'widgets/user_nav_drawer.dart';
import 'widgets/recent_update_list_widget.dart';
import 'widgets/percentage_widget.dart';
class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  double bannerHeight, listHeight, listPaddingTop;
  double cardContainerHeight, cardContainerTopPadding;
  @override
  Widget build(BuildContext context) {

    bannerHeight = MediaQuery.of(context).size.height * .20;
    listHeight = MediaQuery.of(context).size.height * .80;
    cardContainerHeight = 160;
    cardContainerTopPadding = bannerHeight/2;
    listPaddingTop = cardContainerHeight - (bannerHeight/2);

    return Scaffold(
      appBar: AppBar(
        title: Text("Charusat Blood Donor"),
        centerTitle: true,
      ),
      drawer: UserNavDrawer(),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              topBanner(context), //0.20% Screen
              Expanded(child: bodyBloodRequestList(context),) //0.80%
            ],
          ),
          bannerContainer(),
          cardContainer(context),
        ],
      ),
    );
  }


Container bodyBloodRequestList(context){
  return Container(
    width: MediaQuery.of(context).size.width,
    color: Colors.grey.shade300,
    padding:
    new EdgeInsets.only(top: listPaddingTop, right: 10.0, left: 10.0),
    child: Column(
      children: <Widget>[
        Expanded(child: listRecentUpdates())
      ],
    ),
  );
}

  ListView listRecentUpdates() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return RecentUpdateListWidget();
        });
  }

  Container topBanner(BuildContext context) {
    return Container(
      height: bannerHeight,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromARGB(1000, 157, 37, 24),
            const Color.fromARGB(1000, 212, 47, 33),
          ])),
    );
  }

  Container bannerContainer() {
    return Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 30, right: 20.0, left: 20.0),
        child: Text(
          "Blood Requests",
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
    );
  }

  Container cardContainer(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: new EdgeInsets.only(
          top: cardContainerTopPadding, right: 20.0, left: 20.0),
      child: Container(
        height: cardContainerHeight,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PercentageWidget(
                  size: 120.0,
                  title: 'Available',
                  count: 126,
                  countLeft: true,
                ),
                PercentageWidget(
                  size: 120.0,
                  title: 'Requests',
                  count: 248,
                  countLeft: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}