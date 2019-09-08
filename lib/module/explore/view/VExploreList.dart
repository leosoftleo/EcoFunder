import 'dart:convert';

import 'package:flutter/material.dart';

import '../renderer/RExploreCard.dart';
import '../../details/view/VDetails.dart';
import '../../../app/controller/CApp.dart';

class VExploreList extends StatefulWidget {
  @override
  _ExploreList createState() => _ExploreList();
}

class _ExploreList extends State<VExploreList> {
  @override
  Widget build(BuildContext context) {
    ScrollController sc = new ScrollController();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Explore',
            style: TextStyle(color: Color(0xFF3361CA), fontSize: 36),
          ),
          bottom: TabBar(
            labelColor: Color(0xFF3361CA),
            indicatorColor: Color(0xFF3361CA),
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text('Popular'),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text('Newest'),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text('Ending Soon'),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          children: <Widget>[
            view(sc, 0),
            view(sc, 1),
            view(sc, 2),
          ],
        ),
      ),
    );
  }
}

Container view(ScrollController sc, int tab) {
  return Container(
    child: FutureBuilder<dynamic>(
        future: get_project_data(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            dynamic new_data = json.decode(snapshot.data);
            // tab is the index for tabItem
            List<dynamic> dates = new_data['projects'];
            switch (tab) {
              case 0:
              case 1:
                {
                  dates.sort((a, b) {
                    return b['daysLefts_count'].compareTo(a['daysLefts_count']);
                  });
                  break;
                }
              case 2:
                {
                  dates.sort((a, b) {
                    return a['daysLefts_count'].compareTo(b['daysLefts_count']);
                  });
                  break;
                }
            }
            return createListView(sc, dates);
          } else {
            return Container(
              width: 0,
              height: 0,
            );
          }
        }),
  );
}

ListView createListView(ScrollController sc, dynamic data) {
  return ListView.builder(
    controller: sc,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        child: RExploreCard(data[index], context).exploreListCard,
        // on Tap shows details page
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VDetails(data[index])),
          );
        },
      );
    },
    itemCount: data == null ? 0 : data.length,
  );
}