import 'dart:async';

import 'package:flutter/services.dart' show rootBundle;

Future<String> get_project_data() async{
  dynamic data = await rootBundle.loadString('lib/app/assets/data/project.json');
  return data;
}