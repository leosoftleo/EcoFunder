import 'package:flutter/material.dart';

import '../object/ONews.dart';
import '../renderer/RNewsListItem.dart';
import '../renderer/RNewsListItemScrollable.dart';

class VNewsView extends StatelessWidget {
  VNewsView(this.data);

  final List<ONews> data;

  @override
  Widget build(BuildContext context) {
    print(data[6].imageUrl);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'News Highlight',
            style: TextStyle(color: Color(0xFF3361CA), fontSize: 32),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RNewsListItemScrollable(data[0]),
                      RNewsListItemScrollable(data[1]),
                      RNewsListItemScrollable(data[2]),
                      RNewsListItemScrollable(data[3]),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data.length - 4,
                  itemBuilder: (BuildContext context, int index){
                    return RNewsListItem(data[4 + index]);
                  },
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
    );
  }
}
