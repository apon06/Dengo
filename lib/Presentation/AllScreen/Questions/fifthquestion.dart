import 'package:dengugo/Core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../widget/question_button.dart';

class FifthQuestion extends StatelessWidget {
  const FifthQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(),
            const Text(
              "জ্বর আছে ?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const Text(
              "(৪০° সে.)",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 100.0),
            const Image(
              image: AssetImage("assets/fever.png"),
              width: 200,
              height: 200,
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(),
                  const SizedBox(height: 150.0),
                  QuestionButton(
                    color: Colors.red,
                    onTap: () {
                      print("clicked No");
                    },
                    borderRadius: 24.0,
                    text: 'না',
                  ),
                  const SizedBox(width: 10.0),
                  QuestionButton(
                    onTap: () {
                      print("clicked Yes");
                      Get.toNamed(AppRoutes.SIXTHQUESTION);
                    },
                    borderRadius: 24.0,
                    text: 'হ্যাঁ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
