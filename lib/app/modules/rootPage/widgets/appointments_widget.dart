import 'package:flutter/material.dart';
import 'package:medicall_project/app/routes/app_pages.dart';
import 'package:medicall_project/core/constant/assets.dart';
import 'package:medicall_project/core/constant/colors.dart';
import 'package:medicall_project/core/constant/styles.dart';
import 'package:medicall_project/core/widgets/lancer_image.dart';
import 'package:get/get.dart';

class AppointmentsWidget extends StatelessWidget {
  const AppointmentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SafeArea(
          child: Center(
            child: Text(
              'Appointments',
              style: AppStyles.styleTextBody25(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
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
                          height: 220,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            boxShadow: [AppStyles.bottomShadow],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                          style: AppStyles.styleTextBody12(colorText: AppColors.grayDark),
                                        ).marginOnly(right: 30),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.calendar_today_outlined,
                                          size: 25,
                                          color: AppColors.purple,
                                        ),
                                        Text(
                                          'Mon,Jan 22',
                                          style: AppStyles.styleTextBody12(colorText: AppColors.grayMedium),
                                        ).marginOnly(right: 30),
                                        const Icon(
                                          Icons.watch_later_rounded,
                                          size: 25,
                                          color: AppColors.purple,
                                        ),
                                        Text(
                                          '10:30',
                                          style: AppStyles.styleTextBody12(colorText: AppColors.grayMedium),
                                        ).marginOnly(right: 30),
                                        const Icon(
                                          Icons.offline_pin,
                                          size: 25,
                                          color: AppColors.green,
                                        ),
                                        Text(
                                          'Confirmed',
                                          style: AppStyles.styleTextBody12(colorText: AppColors.grayMedium),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 140,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Get.toNamed(Routes.ROOT_PAGE);
                                            },
                                            style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody12(fontWeight: FontWeight.bold))),
                                            child: const Text("Cancel"),
                                          ),
                                        ).marginOnly(top: 20),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                          child: SizedBox(
                                            width: 140,
                                            height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Get.toNamed(Routes.ROOT_PAGE);
                                              },
                                              style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody12(fontWeight: FontWeight.bold))),
                                              child: const Text("Reschedule"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const AppImage(
                                asset: Assets.dr,
                                width: 80,
                                height: 60,
                              ).marginOnly(bottom: 100)
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
      ),
    );
  }
}
