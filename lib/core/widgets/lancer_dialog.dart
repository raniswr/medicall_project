import 'package:flutter/material.dart';
import 'package:medicall_project/app/routes/app_pages.dart';
import 'package:medicall_project/core/constant/assets.dart';
import 'package:medicall_project/core/constant/colors.dart';
import 'package:medicall_project/core/constant/styles.dart';
import 'package:medicall_project/core/widgets/lancer_image.dart';
import 'package:get/get.dart';

showDialogSuccsess(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const SizedBox(
          width: 130,
          height: 130,
          child: AppImage(
            svg: Assets.checklist,
          )),
      content: SizedBox(
        height: 110,
        width: 320,
        child: Column(
          children: [
            Text('Success!', style: AppStyles.styleTextBody36(fontWeight: FontWeight.bold).copyWith(color: AppColors.green)).marginOnly(left: 10),
            Text('A change has been saved', style: AppStyles.styleTextBody18().copyWith(color: AppColors.green)).marginOnly(left: 5),
          ],
        ),
      ),
    ),
  );
}

showDialogCreate(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
        title: Row(
          children: [
            Text(
              'Create',
              style: AppStyles.styleTextBody18(fontWeight: FontWeight.bold),
            ).marginOnly(left: 130),
            InkWell(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.close,
                size: 25,
                color: AppColors.green,
              ).marginOnly(left: 100),
            ),
          ],
        ),
        content: SizedBox(
          height: 180,
          width: 280,
          child: Column(
            children: [
              SizedBox(
                width: 250,
                height: 44,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.CREATE_LEAD_PAGE),
                  style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody12(fontWeight: FontWeight.bold)), backgroundColor: MaterialStateProperty.all<Color>(AppColors.green)),
                  child: const Text("Lead"),
                ),
              ).marginOnly(bottom: 20),
              SizedBox(
                width: 250,
                height: 44,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context, 'quotation'),
                  style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody12(fontWeight: FontWeight.bold)), backgroundColor: MaterialStateProperty.all<Color>(AppColors.green)),
                  child: const Text("Quotation"),
                ),
              ).marginOnly(bottom: 20),
              SizedBox(
                width: 250,
                height: 44,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.CREATE_SALES_ACTIVITY_PAGE),
                  style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody12(fontWeight: FontWeight.bold)), backgroundColor: MaterialStateProperty.all<Color>(AppColors.green)),
                  child: const Text("Sales Activity"),
                ),
              ),
            ],
          ),
        )),
  );
}
