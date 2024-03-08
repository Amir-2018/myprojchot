import 'package:flutter/material.dart';
import 'features/authentication/presentation/widgets/changepassword.dart';
import 'features/authentication/presentation/widgets/login.dart';
import 'features/authentication/presentation/widgets/signup.dart';
import 'features/authentication/presentation/widgets/users_view.dart';
import 'features/authentication/presentation/widgets/verifyCode.dart';
import 'features/authentication/presentation/widgets/verifyEmail.dart';
void main() {
  runApp(

      MaterialApp(

        title: 'Chotrana smart village',
        debugShowCheckedModeBanner: false,
        // Define routes
        initialRoute: '/userList',
        routes: {
          '/signup': (context) => const SignupWidget(),
          '/verifyEmail': (context) => const VerifyEmail(),
          '/changePassword': (context) => const ChangePasswordWidget(),
          '/verifyCode': (context) => const VerifyCode(),
          '/': (context) =>  Login(),
          '/userList': (context) =>  Users_view(),
        },
      ),
  );
}








