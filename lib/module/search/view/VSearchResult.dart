import 'package:flutter/material.dart';

import '../controller/CSearch.dart';
import '../renderer/RSearch.dart';

class VSearchResult extends StatefulWidget {
  @override
  _VSearchResultState createState() => _VSearchResultState();
}

class _VSearchResultState extends State<VSearchResult> {
  String keyword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close,
              color: Color(0xFF3361CA),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        title: TextField(
          onChanged: (String text){
            setState(() {
             keyword = text; 
            });
          },
          style: TextStyle(
            color: Color(0xFF3361CA),
          ),
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Color(0xFF3361CA)),
              hintText: "Search...",
              hintStyle: TextStyle(color: Color(0xFF3361CA))),
        ),
      ),
      body: FutureBuilder<dynamic>(
        future: search_result(keyword),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData && keyword != '') {
            return RSearch(snapshot.data).search_list;
          }
          return Container();
        },
      ),
    );
  }
}
