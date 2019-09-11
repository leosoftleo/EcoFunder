import 'package:eco_funder/module/profile/view/VProfileEdit.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import '../../../app/controller/CApp.dart';

import '../../profile/model/MProfile.dart';
import '../../profile/renderer/RProfileActivityCard.dart';
import '../../profile/styles/SProfile.dart';

class VProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      // Box decoration takes a gradient
                      gradient: LinearGradient(
                        // Where the linear gradient begins and ends
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // Add one stop for each color. Stops should increase from 0 to 1
                        stops: [0.1, 0.4, 0.6, 1],
                        colors: [
                          // Colors are easy thanks to Flutter's Colors class.
                          Colors.purple[400],
                          Colors.purple[700],
                          Colors.purple[800],
                          Colors.purple[900],
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 75),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://profilepicture7.com/bao/bao_dongman/1/-1725550477.jpg")
                        ),
                        border: Border.all(color: Colors.white, width: 3),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      MProfile.imageSelector();
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 150),
                      padding: EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.edit,
                            size: 12,
                          ),
                          Text(
                            " Edit",
                            style: SProfile.p_desc_ts,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VProfileEdit()
                          )
                      );
                    },
                  )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Text(
                "Takishima Kei",
                style: SProfile.p_name_ts,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6, bottom: 12),
              child: Text(
                "Actor • Model • Investor\nI'll be testing the design of this app.",
                style: SProfile.p_desc_ts,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "1,200",
                          style: SProfile.p_statsNum_ts,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "INVESTMENTS",
                          style: SProfile.p_stats_ts,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black12, width: 1),
                        right: BorderSide(color: Colors.black12, width: 1),
                        bottom: BorderSide(color: Colors.black12, width: 1),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "23.6k",
                          style: SProfile.p_statsNum_ts,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "RATINGS",
                          style: SProfile.p_stats_ts,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black12, width: 1),
                        bottom: BorderSide(color: Colors.black12, width: 1),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "\$12.4M",
                          style: SProfile.p_statsNum_ts,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "SHARE PROFIT",
                          style: SProfile.p_stats_ts,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black12, width: 1),
                        left: BorderSide(color: Colors.black12, width: 1),
                        bottom: BorderSide(color: Colors.black12, width: 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(12),
              child: Text(
                "Recent Activity",
                style: SProfile.p_desc_ts,
                textAlign: TextAlign.start,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 3.0),
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: FutureBuilder<dynamic>(
                    future: get_project_data(),
                    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.hasData) {
                        dynamic new_data = json.decode(snapshot.data);
                        // tab is the index for tabItem
                        List<dynamic> dates = new_data['projects'];
                        return createListView(dates);
                      } else {
                        return Container(
                          width: 0,
                          height: 0,
                        );
                      }
                    }
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }

  ListView createListView(dynamic data) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: RProfileActivityCard(data[index], context).exploreListCard,
          // on Tap shows details page
          onTap: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VDetails(data[index])),
            );*/
          },
        );
      },
      itemCount: data == null ? 0 : data.length,
    );
  }

}