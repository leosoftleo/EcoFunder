import 'package:flutter/material.dart';

class VNewsSkeleton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}