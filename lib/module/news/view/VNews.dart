import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/MNews.dart';
import '../view/VNewsView.dart';
import '../view/VNewsSkeleton.dart';

class VNews extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final dynamic newsModel = Provider.of<MNews>(context);
    return newsModel.newsList != null ? VNewsView(newsModel.newsList): VNewsSkeleton();
  }
}