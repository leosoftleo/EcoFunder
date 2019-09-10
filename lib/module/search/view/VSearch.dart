import 'dart:convert';

import 'package:flutter/material.dart';

import '../renderer/RSearch.dart';
import '../../../app/controller/CApp.dart';
import '../controller/CSearch.dart';

class VSearch extends StatefulWidget {
  VSearch({ Key key }) : super(key: key);
  @override
  SearchList createState() => new SearchList();

}
class SearchList extends State<VSearch>{
  Widget appBarTitle = new Text("Search", style: TextStyle(color: Color(0xFF3361CA), fontSize: 36));
  Icon actionIcon = new Icon(Icons.search, color: Color(0xFF3361CA),);

  dynamic list_view = Container(
    child: FutureBuilder<dynamic>(
        future: get_project_data(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            dynamic new_data = json.decode(snapshot.data);
            // tab is the index for tabItem
            return  RSearch(new_data['projects']).search_list;
          } else {
            return Container(
              width: 0,
              height: 0,
            );
          }
        }),
  );

  dynamic search_word;
  
  Container result_list() => Container(
    child: FutureBuilder<dynamic>(
      future: search_result('Trees'),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
        if(snapshot.hasData){
          print(snapshot.data);
        }
        return Container();
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
      centerTitle: true,
      title: appBarTitle,
      actions: <Widget>[
        new IconButton(icon: actionIcon,onPressed:(){
          setState(() {
            if ( this.actionIcon.icon == Icons.search){
              this.actionIcon = new Icon(Icons.close, color: Color(0xFF3361CA),);
              this.list_view = Container(
                child: result_list()
              );
              this.appBarTitle = new TextField(
                style: new TextStyle(
                  color: Color(0xFF3361CA),
                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search,color: Color(0xFF3361CA)),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Color(0xFF3361CA))
                ),
              );}
            else {
              this.actionIcon = new Icon(Icons.search, color: Color(0xFF3361CA),);
              this.appBarTitle = new Text("Search", style: TextStyle(color: Color(0xFF3361CA)),);
              this.list_view =  list_view = Container(
                child: FutureBuilder<dynamic>(
                    future: get_project_data(),
                    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.hasData) {
                        dynamic new_data = json.decode(snapshot.data);
                        // tab is the index for tabItem
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

          });
        } ,),]),


      body: Container(
        child: list_view,
      ),

    );
  }
}