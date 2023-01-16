import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicall_project/core/constant/assets.dart';
import 'package:medicall_project/core/constant/colors.dart';
import 'package:medicall_project/core/constant/styles.dart';
import 'package:medicall_project/core/widgets/lancer_image.dart';

class DoctorPageView extends StatelessWidget {
  const DoctorPageView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.dehaze_outlined),
            color: AppColors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.purple,
              width: 500,
              height: 200,
              child: Column(
                children: [
                  const AppImage(
                    asset: Assets.doctorBg,
                    width: 150,
                  ),
                  Container(
                    color: AppColors.white,
                    height: 50,
                    width: 380,
                    child: Row(
                      children: [
                        Text(
                          'Dr. Meg Grace',
                          style: AppStyles.styleTextBody20(fontWeight: FontWeight.bold),
                        ).marginAll(10),
                        Container(
                                width: 50,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.purple,
                                ),
                                child: Text(
                                  '5.0',
                                  style: AppStyles.styleTextBody25(fontWeight: FontWeight.bold, colorText: AppColors.white),
                                ).marginAll(5))
                            .marginOnly(left: 150)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                color: AppColors.white,
                height: 70,
                width: 380,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Therapist',
                      style: AppStyles.styleTextBody14(),
                    ).marginOnly(left: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 25,
                          color: AppColors.purple,
                        ).marginAll(10),
                        Text(
                          '50k',
                          style: AppStyles.styleTextBody12(fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.location_on_outlined,
                          size: 25,
                          color: AppColors.yellow,
                        ).marginOnly(left: 10),
                        Text(
                          '1,8 km',
                          style: AppStyles.styleTextBody12(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '125 views',
                          style: AppStyles.styleTextBody12(fontWeight: FontWeight.bold),
                        ).marginOnly(left: 170),
                      ],
                    )
                  ],
                )).marginOnly(left: 50),
            Text(
              'About Doctor',
              style: AppStyles.styleTextBody20(fontWeight: FontWeight.bold),
            ).marginOnly(left: 20).marginOnly(top: 40),
            Text(
              'Dr. Jim Pattison have extensive experience in Internal Medicine and hospital setti...Read moreDr. Jim Pattison have extensive experience in Internal Medicine and hospital setti.Read',
              style: AppStyles.styleTextBody14(colorText: AppColors.grayMedium),
            ).marginOnly(left: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
              child: Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [AppStyles.bottomShadow],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'Sertificate',
                      style: AppStyles.styleTextBody20(fontWeight: FontWeight.bold),
                    ).marginAll(15),
                    const AppImage(
                      asset: Assets.sertificate,
                      width: 210,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody18())),
                child: const Text("Book Appointment"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
