import 'package:flutter/material.dart';
import 'package:medicall_project/app/modules/rootPage/widgets/form_profile/form_profile.dart';

import 'package:medicall_project/core/constant/assets.dart';
import 'package:medicall_project/core/constant/colors.dart';

import 'package:medicall_project/core/widgets/lancer_image.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgcolor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings_outlined,
              size: 25,
              color: AppColors.purple,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 130,
                  width: 130,
                  padding: const EdgeInsets.all(8),
                  color: AppColors.bgcolor,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: const AppImage(
                            asset: Assets.profile,
                            width: 130,
                          ),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: AppColors.Lightpurple),
                        child: const Icon(
                          Icons.camera_alt_sharp,
                          size: 20,
                          color: AppColors.Mediumpurple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const FormProfileCustomer(),
            ],
          ),
        ),
      ),
    );
  }
}
