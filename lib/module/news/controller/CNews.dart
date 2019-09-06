import 'package:http/http.dart' as http;

import 'package:url_launcher/url_launcher.dart';

Future<String> getNewsData(String url) async{
  final response = await http.get(url);
  if(response.statusCode == 200){
    return response.body;
  }else{
    throw Exception('Failed to load post');
  }
}

Future<void> openBrowser(String url) async{
  launch(url);
}
