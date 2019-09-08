import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './VInvestment.dart';

class VDetails extends StatelessWidget {
  VDetails(this.data);

  final dynamic data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(top: 52.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              '${data['name']}',
                              style: TextStyle(
                                  fontSize: 21.0,
                                  color: Color(0xFF17DDAA),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 28.0, left: 28.0, right: 32.0),
                            child: Text(
                              '${data['description']}',
                              style: TextStyle(
                                  fontSize: 16.0, color: Color(0xFF707070)),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 28.0, left: 28.0, right: 32.0),
                                child: Text('Milestones',
                                    style: TextStyle(
                                        fontSize: 26.0,
                                        color: Color(0xFF17DDAA),
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Image.asset(
                            'lib/module/Details/assets/photos/milestone.png',
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 28.0, left: 27.0),
                                child: Text(
                                  '1st Milestone',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Color(0xFF3361CA)),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 28.0, left: 10.0),
                                child: Text(
                                  '\$${data['milestone'][0]['rewards']}',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.bottomRight,
                                  margin: const EdgeInsets.only(
                                      top: 28.0, left: 40.0),
                                  child: Text(
                                    '${data['milestone'][0]['date']}',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0x88707070)),
                                  )),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 5.0, left: 28.0, right: 32.0),
                                child: Text(
                                  '${data['milestone'][0]['target_description']}',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Color(0xFF707070)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 28.0, left: 27.0),
                                child: Text(
                                  '2nd Milestone',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Color(0xFF3361CA)),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 28.0, left: 8.0),
                                child: Text(
                                  '\$${data['milestone'][1]['rewards']}',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(
                                      top: 28.0, left: 40.0),
                                  child: Text(
                                    '${data['milestone'][1]['date']}',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0x88707070)),
                                  )),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 5.0, left: 28.0, right: 32.0),
                                child: Text(
                                  '${data['milestone'][1]['target_description']}',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Color(0xFF707070)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 28.0, left: 27.0),
                                child: Text(
                                  '3rd Milestone',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Color(0xFF3361CA)),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 28.0, left: 10.0),
                                child: Text(
                                  '\$${data['milestone'][2]['rewards']}',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(
                                      top: 28.0, left: 40.0),
                                  child: Text(
                                    '${data['milestone'][2]['date']}',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0x88707070)),
                                  )),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 5.0, left: 28.0, right: 32.0),
                                child: Text(
                                  '${data['milestone'][2]['target_description']}',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Color(0xFF707070)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(top: 18.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '\$${data['investment']}',
                                      style: TextStyle(
                                          fontSize: 32.0,
                                          color: Color(0xFF3361CA),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'INVESTMENT',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Color(0xFF707070)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 18.0, left: 59.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      '\$${data['expected_return']}',
                                      style: TextStyle(
                                          fontSize: 32.0,
                                          color: Color(0xFF3361CA),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'EXPECTED RETURN',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Color(0xFF707070)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 28.0, left: 28.0),
                                child: Text(
                                  'Issued By',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 28.0, left: 5.0, right: 32.0),
                                child: Text(
                                  '${data['company_name']}',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xFF36DE83),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              width: 307.0,
                              height: 35.0,
                              margin: const EdgeInsets.only(
                                  top: 25.0, bottom: 25.0),
                              child: RaisedButton(
                                color: Color(0xFF17DDAA),
                                child: Text(
                                  'Invest Now',
                                  style: TextStyle(color: Color(0xFFFFFFFF)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('${data['name']}'),
                                          content: Text(
                                              'Do you confirm to invest this project?'),
                                          actions: <Widget>[
                                            FlatButton(
                                              child: Text('Close'),
                                              onPressed: (){
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            FlatButton(
                                              child: Text('Accept'),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          VInvestment(
                                                              data['name'],
                                                              data[
                                                                  'company_name'])),
                                                );
                                              },
                                            )
                                          ],
                                        );
                                      });
                                },
                              ))
                        ],
                      ))
                ],
              ),
            )));
  }
}
