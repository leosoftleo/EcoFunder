import 'package:flutter/material.dart';

import '../styles/SProfile.dart';

class RProfileActivityCard {

  RProfileActivityCard(this.data, this.context);
  dynamic data;
  BuildContext context;

  Card get exploreListCard {

    return Card(
      margin: EdgeInsets.only(left: 10, top: 10, right: 10),
      elevation: 2.0,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Text(
                    data['name'],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: SProfile.title,
                  ),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 170,
                ), //Positioned
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(data['description'],
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: SProfile.description),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 170,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'Milestones: ', style: SProfile.description),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('${data['complete_milestone']}/${data['total_milestone']}', style: SProfile.description),
                      ),
                    ],
                  ),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 170,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 5.0, right: 20.0, bottom: 10.0),
                  child: MilestoneProgressIndicator(value: (data['complete_milestone']/data['total_milestone']),
                    backgroundColor: Color(0xFFE6FFE6),
                    valueColor: AlwaysStoppedAnimation(Color(0xFF009F00)),),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 150,
                  height: 1.5,
                ),
              ],
            ),
            Container(
              width: 80,
              height: 100,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0)),
                child: Image.asset(
                  data['photo'],
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  fit: BoxFit.cover,
                ),
              ),
            ), //Container
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
        ),
      ),
    );
  }
}

class MilestoneProgressIndicator extends LinearProgressIndicator implements PreferredSizeWidget {
  MilestoneProgressIndicator({
    Key key,
    double value,
    Color backgroundColor,
    Animation<Color> valueColor,
  }) : super(
    key: key,
    value: value,
    backgroundColor: backgroundColor,
    valueColor: valueColor,
  ) {
    preferredSize = Size(double.infinity, 0.5);
  }

  @override
  Size preferredSize;
}