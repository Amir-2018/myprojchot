import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/implementation/user_repository_implementation.dart';
import '../../domain/model/user.dart';

class Users_view extends StatefulWidget {
  const Users_view({super.key});

  @override
  State<Users_view> createState() => _MyAppState();
}
class _MyAppState extends State<Users_view> {
  late Future<User> futureUser;
  @override
  void initState() {
    super.initState();
    futureUser = getUser();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
          child: FutureBuilder<User>(
            future: futureUser,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.name);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        );
  }
}