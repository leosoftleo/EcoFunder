import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

import '../../../app/controller/CApp.dart';
import '../renderer/RSearch.dart';
import './VSearchResult.dart';

class VSearchHome extends StatefulWidget {
  @override
  _VSearchHomeState createState() => _VSearchHomeState();
}

class _VSearchHomeState  extends State<VSearchHome> with TickerProviderStateMixin {
  AnimationController translateController;
  Animation<Offset> translateOffset;

  @override
  void initState() {
    translateController = AnimationController(
      vsync:this,
      duration: const Duration(milliseconds: 500),
    );

    translateController.addStatusListener ((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        translateController.reverse();
      }
    });

    translateOffset = Tween<Offset> (
        begin: const Offset(0, 0), end: const Offset(0, -5))
        .animate (translateController);

    super.initState();
  }

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
      body: Container(
        alignment: Alignment.center,
        child: SlideTransition(
          position: translateOffset,
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.all(35),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      enabled: false,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  Icon(Icons.search),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
            ),
            onTap: () {
              print('tapped');
              translateController.forward();

              Future<void>.delayed(const Duration(milliseconds: 300), (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VSearchResult()),
                  );
                });
              });
            },
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.black87,
        ),
      ),
    );
  }
}
