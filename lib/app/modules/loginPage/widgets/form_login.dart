import 'package:flutter/material.dart';
import 'package:medicall_project/app/routes/app_pages.dart';
import 'package:medicall_project/core/constant/colors.dart';
import 'package:medicall_project/core/constant/styles.dart';

import 'package:get/get.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: AppStyles.inputDecorationFloating("Email", "Enter your email"),
          ).marginSymmetric(vertical: 15),
          TextField(
            decoration: AppStyles.inputDecorationFloating("Password", "Enter your password"),
            obscureText: true,
          ).marginOnly(top: 15),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Get.toNamed(Routes.FORGOR_PASSWORD_PAGE);
              },
              child: Text(
                "Forgot Password?",
                style: AppStyles.styleTextBody16(colorText: AppColors.red),
              ),
            ),
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.ROOT_PAGE);
              },
              style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody12(fontWeight: FontWeight.bold))),
              child: const Text("LOGIN"),
            ),
          ).marginOnly(top: 20),
        ],
      ),
    );
  }
}
