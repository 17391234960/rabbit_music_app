import 'package:http/http.dart' as http;

const String baseUrl = 'https://rabbit-music-1761640-1310612875.ap-shanghai.run.tcloudbase.com';

Future<String> sayHello () async {
  final response = await http
      .get(Uri.parse('$baseUrl/default'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // return Album.fromJson(jsonDecode(response.body));
    return response.body;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('请求失败');
  }
}