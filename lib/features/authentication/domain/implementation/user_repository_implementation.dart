import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user.dart';

Future<User> getUser() async {
  final response = await http.get(Uri.parse('http://localhost:3000/2'));
  if (response.statusCode == 200) {
    User user = User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    return user ;
  } else {
    throw Exception('Failed to load user');
  }


}