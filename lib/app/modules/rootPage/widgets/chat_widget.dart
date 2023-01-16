import 'package:flutter/material.dart';
import 'package:medicall_project/core/constant/assets.dart';
import 'package:medicall_project/core/constant/colors.dart';
import 'package:medicall_project/core/constant/styles.dart';
import 'package:bubble/bubble.dart';
import 'package:get/get.dart';
import 'package:medicall_project/core/widgets/lancer_image.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.bgcolor,
          title: Row(
            children: [
              const AppImage(
                asset: Assets.doctorCircle,
                width: 60,
              ).marginOnly(right: 10),
              Text(
                'Dr. Meg Grace',
                style: AppStyles.styleTextBody16(fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.videocam),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.phone),
              onPressed: () {},
            ),
          ]),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                shrinkWrap: true,
                primary: true,
                itemBuilder: (context, index) {
                  if (index.isEven) {
                    return Column(
                      children: [
                        Bubble(
                          margin: const BubbleEdges.only(top: 10),
                          padding: const BubbleEdges.all(20),
                          alignment: Alignment.topRight,
                          nip: BubbleNip.rightTop,
                          color: AppColors.Mediumpurple,
                          child: const Text('Hello, World!', textAlign: TextAlign.right),
                        ),
                      ],
                    );
                  } else {
                    return Bubble(
                      margin: const BubbleEdges.only(top: 10),
                      padding: const BubbleEdges.all(20),
                      alignment: Alignment.topLeft,
                      nip: BubbleNip.leftTop,
                      color: AppColors.Lightpurple,
                      child: const Text('Hi, developer!'),
                    );
                  }
                }),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: AppStyles.inputDecorationFloating(
                    "",
                    "messege",
                    disableLabel: true,
                    suffixIcon: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.mic,
                        size: 25,
                        color: AppColors.grayMedium,
                      ),
                    ),
                  ),
                ).marginOnly(top: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
