import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicall_project/app/routes/app_pages.dart';
import 'package:medicall_project/core/constant/assets.dart';
import 'package:medicall_project/core/constant/colors.dart';
import 'package:medicall_project/core/constant/styles.dart';
import 'package:medicall_project/core/widgets/lancer_image.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.bgcolor,
          title: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Hi, Jane', style: AppStyles.styleTextBody16()),
                      const AppImage(
                        asset: Assets.hand,
                        width: 20,
                      ),
                    ],
                  ),
                  Text('Find your doctor', style: AppStyles.styleTextBody25(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ).marginOnly(left: 20),
          actions: [
            InkWell(
              onTap: () {},
              child: const AppImage(
                asset: Assets.profile,
                width: 110,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: AppStyles.inputDecorationFloating(
                  "",
                  "Search a doctor to health issue",
                  disableLabel: true,
                  suffixIcon: const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                ),
              ).marginOnly(top: 20),
            ),
            Text(
              'Appointments',
              style: AppStyles.styleTextBody20(fontWeight: FontWeight.bold),
            ).marginOnly(left: 25),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.DOCTOR_PAGE);
              },
              child: Container(
                width: 435,
                height: 130,
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  boxShadow: [AppStyles.bottomShadow],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const AppImage(
                      asset: Assets.doctor,
                      width: 80,
                    ).marginOnly(left: 10),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                          child: Text('Dr. Meg Grace', style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold, colorText: AppColors.white)),
                        ),
                        Text('Therapist', style: AppStyles.styleTextBody14(colorText: AppColors.white)).marginOnly(right: 50),
                        Text('Today, 1:00 PM', style: AppStyles.styleTextBody16(colorText: AppColors.white)).marginOnly(left: 6),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 25,
                      color: AppColors.white,
                    ).marginOnly(left: 150)
                  ],
                ),
              ).marginAll(20),
            ),
            Text(
              'Categories',
              style: AppStyles.styleTextBody20(fontWeight: FontWeight.bold),
            ).marginOnly(left: 25),
            Row(
              children: [
                Container(
                  width: 85,
                  height: 75,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [AppStyles.bottomShadow],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const AppImage(
                        asset: Assets.dentist,
                        width: 35,
                        height: 35,
                      ),
                      Text(
                        'Dentist',
                        style: AppStyles.styleTextBody12(),
                      )
                    ],
                  ),
                ).marginOnly(left: 35),
                Container(
                  width: 85,
                  height: 75,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [AppStyles.bottomShadow],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const AppImage(
                        asset: Assets.general,
                        width: 35,
                        height: 35,
                      ),
                      Text(
                        'General',
                        style: AppStyles.styleTextBody12(),
                      )
                    ],
                  ),
                ).marginOnly(left: 35),
                Container(
                  width: 85,
                  height: 75,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [AppStyles.bottomShadow],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const AppImage(
                        asset: Assets.cardiologist,
                        width: 35,
                        height: 35,
                      ),
                      Text(
                        'Cardiologist',
                        style: AppStyles.styleTextBody12(),
                      )
                    ],
                  ),
                ).marginOnly(left: 35),
                Container(
                  width: 85,
                  height: 75,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [AppStyles.bottomShadow],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const AppImage(
                        asset: Assets.gastriologist,
                        width: 35,
                        height: 35,
                      ),
                      Text(
                        'Gastriologist',
                        style: AppStyles.styleTextBody12(),
                      )
                    ],
                  ),
                ).marginOnly(left: 30)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Text(
                'Popular doctors',
                style: AppStyles.styleTextBody20(fontWeight: FontWeight.bold),
              ).marginOnly(left: 25),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              primary: false,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.toNamed(Routes.QUOTATION_CUSTOMER_PAGE);
                      },
                      contentPadding: const EdgeInsets.all(10),
                      style: ListTileStyle.list,
                      title: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [AppStyles.bottomShadow],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const AppImage(
                              asset: Assets.dr,
                              width: 80,
                              height: 80,
                            ).marginOnly(left: 10),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Text(
                                    'Dr. Julia Thompson',
                                    style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Therapist',
                                    style: AppStyles.styleTextBody14(),
                                  ).marginOnly(right: 120),
                                  Row(
                                    children: [
                                      const AppImage(
                                        asset: Assets.stars,
                                        width: 45,
                                        height: 45,
                                      ).marginOnly(left: 20),
                                      Text(
                                        '115 reviews',
                                        style: AppStyles.styleTextBody12(colorText: AppColors.grayMedium),
                                      ).marginOnly(right: 30),
                                      Text(
                                        "Rp. 50.0000",
                                        style: AppStyles.styleTextBody14(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ).marginOnly(left: 10),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
