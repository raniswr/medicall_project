import 'package:flutter/material.dart';
import 'package:medicall_project/core/constant/styles.dart';
import 'package:get/get.dart';

class FormProfileCustomer extends StatelessWidget {
  const FormProfileCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "First Name",
                      style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: AppStyles.inputDecorationFloating("", "", disableLabel: true),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Middle Name",
                      style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: AppStyles.inputDecorationFloating("", "", disableLabel: true),
                    )
                  ],
                ),
              ),
            ],
          ).paddingOnly(bottom: 13),
          Text(
            "Last Name",
            style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: AppStyles.inputDecorationFloating("", "", disableLabel: true),
          ).paddingOnly(bottom: 13),
          Text(
            "Disease history",
            style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: AppStyles.inputDecorationFloating("", "", disableLabel: true),
          ).paddingOnly(bottom: 13),
          Text(
            "Adress",
            style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: AppStyles.inputDecorationFloating("", "", disableLabel: true),
          ).paddingOnly(bottom: 13),
          Text(
            "Phone Number",
            style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: AppStyles.inputDecorationFloating("", "", disableLabel: true),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody18())),
              child: const Text("SAVE"),
            ),
          ).marginOnly(top: 20),
        ],
      ),
    );
  }
}
