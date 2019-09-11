import 'package:flutter/material.dart';

//import '../../home/view/VHome.dart';

class VInvestment extends StatelessWidget {
  VInvestment(this.projectName, this.companyName);

  final String projectName;
  final String companyName;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Image.asset('lib/module/Details/assets/photos/star.png'),
                ),
                Container(
                  child: Text('SUCCESS!',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Color(0xFF58668F),
                          fontWeight: FontWeight.w900)),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(top: 48.0, left: 50.0, right: 30.0),
                  child: Text(
                      'You just invested to “$projectName” project issues by $companyName.',
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0x8858668F))),
                ),
                Container(
                    width: 307.0,
                    height: 35.0,
                    margin: const EdgeInsets.only(top: 45.0, bottom: 95.0),
                    child: RaisedButton(
                      color: Color(0xFF17DDAA),
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      onPressed: () {
                        Navigator.popUntil(context,ModalRoute.withName('/home'));
                      },
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}