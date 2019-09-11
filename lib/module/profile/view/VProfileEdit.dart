import 'package:flutter/material.dart';

class VProfileEdit extends StatelessWidget {

  final FocusNode focus = new FocusNode();
  final TextEditingController textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Edit Profile"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
              child: Text(
                  "Name"
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.all(6),
              child: TextField(decoration: null,),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 0.5),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
              child: Text(
                  "About me"
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.all(6),
              child: TextField(
                decoration: null,
                minLines: 5,
                maxLines: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 0.5),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 10),
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,),
                    textAlign: TextAlign.center,
                  ),
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
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
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