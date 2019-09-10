import 'package:flutter/material.dart';
import '../../details/view/VDetails.dart';

class RSearch {
  RSearch(this.data);
  dynamic data;

  ListView get search_list => ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VDetails(data[index])),
          );
          },
          child: Card(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: Container(
                      width: 400,
                      child: Image.asset(
                        data[index]['photo'],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Column(
                    children: <Widget>[
                      Text(data[index]['name']),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}