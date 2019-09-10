import 'dart:convert';

import '../../../app/controller/CApp.dart';

Future<List<dynamic>> search_result(String keyword) async {
  List<dynamic> result = [];
  get_project_data().then((String val) {
    dynamic data = json.decode(val);
    for (int i = 0; i < data.length; i++) {
      if (data['projects'][i]['name'].contains(keyword)) result.add(data['projects'][i]);
    }
  });
  return result;
}
