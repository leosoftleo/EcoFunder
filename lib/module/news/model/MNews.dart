import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xml2json/xml2json.dart';

import '../controller/CNews.dart';
import '../object/ONews.dart';

class MNews extends ChangeNotifier {
  MNews() {
    getNewsData(newsUrl).then((result) {
      List<ONews> temp = [];
      final Xml2Json myTransformer = Xml2Json();
      myTransformer.parse(result);
      dynamic data =
          json.decode(myTransformer.toBadgerfish())['rss']['channel']['item'];
      for (int i = 0; i < data.length; i++) {
        String title = data[i]['title']['\$'];
        String link = data[i]['link']['\$'];
        String imageUrl = data[i].containsKey('media:content')
            ? data[i]['media:content']['@url']
            : null;
        if(imageUrl != null)
          temp.add(ONews(title, link, imageUrl));
      }
      newsList = temp;
      notifyListeners();
    });
  }
  final String newsUrl =
      'https://news.google.com/rss/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRGx6TVdZU0FtVnVHZ0pWVXlnQVAB?hl=en-US&gl=US&ceid=US:en';
  
  List<ONews> newsList;
}
