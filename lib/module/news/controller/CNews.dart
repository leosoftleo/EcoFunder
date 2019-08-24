import 'package:http/http.dart' as http;

Future<String> getNewsData(String url) async{
  final response = await http.get(url);
  if(response.statusCode == 200){
    return response.body;
  }else{
    throw Exception('Failed to load post');
  }
}
