import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicall_project/app/modules/loginPage/widgets/form_login.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 200, 5, 0),
            child: FormLogin(),
          ),
        ),
      ),
    );
  }
}
