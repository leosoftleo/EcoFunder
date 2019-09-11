import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../explore/view/VExploreList.dart';
import '../../news/model/MNews.dart';
import '../../news/view/VNews.dart';
import '../../profile/model/MProfile.dart';
import '../../profile/view/VProfile.dart';
import '../../explore/view/VExploreList.dart';
import '../../search/view/VSearchHome.dart';

class VHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: TabBarView(
            children: [
              Container(
                child: VExploreList(),
              ),
              Container(
                child: ChangeNotifierProvider<MNews>(
                  builder: (_) => MNews(),
                  child: VNews(),
                ),
              ),
              Container(
                child: VSearchHome(),
              ),
              Container(
                child: ChangeNotifierProvider<MProfile>(
                  builder: (_) => MProfile(),
                  child: VProfile(),
                ),
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
                  icon: Icon(Icons.web),
                ),
                Tab(
                  icon: Icon(Icons.search),
                ),
                Tab(
                  icon: Icon(Icons.person_outline),
                )
              ],
              labelColor: Colors.deepPurple,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.deepPurple,
            ),
          )),
    );
  }
}
