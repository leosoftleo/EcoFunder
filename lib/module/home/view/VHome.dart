import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../news/model/MNews.dart';
import '../../news/view/VNews.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: TabBarView(
            children: [
              Container(
                child: Container(),
              ),
              Container(
                child: ChangeNotifierProvider<MNews>(
                  builder: (_) => MNews(),
                  child: VNews(),
                ),
              ),
              Container(
                child: Container(),
              ),
              Container(
                child: Container(),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 0.3, color: Color(0xFFAAAAAA)),
              ),
            ),
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.explore),
                ),
                Tab(
                  icon: Icon(Icons.whatshot),
                ),
                Tab(
                  icon: Icon(Icons.search),
                ),
                Tab(
                  icon: Icon(Icons.person_outline),
                )
              ],
              labelColor: Color(0xFF3361CA),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xFF3361CA),
            ),
          )),
    );
  }
}
