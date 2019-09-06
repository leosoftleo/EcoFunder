import 'package:flutter/material.dart';

import '../controller/CNews.dart';
import '../object/ONews.dart';
import '../styles/SNews.dart';

class RNewsListItemScrollable extends StatelessWidget {
  RNewsListItemScrollable(this.data);

  final ONews data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, right: 5.0, bottom: 10.0),
      width: 300,
      height: 180,
      child: GestureDetector(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
          child: Container(
            child: Stack(
              children: <Widget>[
                ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black],
                    ).createShader(Rect.fromLTRB(
                        0, rect.height / 2, rect.width, rect.height - 20));
                  },
                  blendMode: BlendMode.darken,
                  child: Container(
                    height: 180.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              data.imageUrl,
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 5, top: 10),
                  child: Text(data.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: SNews.CARD_LABEL_TEXT_TS,),
                )
              ],
            ),
          ),
          elevation: 2.0,
        ),
        onTap: (){
          openBrowser(data.link);
        },
      ),
    );
  }
}
