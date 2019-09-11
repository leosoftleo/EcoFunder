import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../app/controller/CApp.dart';
import '../renderer/RSearch.dart';
import './VSearchResult.dart';

class VSearchHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Search",
            style: TextStyle(color: Color(0xFF3361CA), fontSize: 36)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VSearchResult()),
              );
            },
          )
        ],
      ),
      body: FutureBuilder<dynamic>(
          future: get_project_data(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              dynamic new_data = json.decode(snapshot.data);
              return RSearch(new_data['projects']).search_list;
            } else {
              return Container(
                width: 0,
                height: 0,
              );
            }
          }),
    );
  }
}
