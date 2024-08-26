import 'package:dengugo/Core/app_routes.dart';
import 'package:dengugo/Presentation/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
              "ডেঙ্গু হয়েছে কিনা জানতে চান?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "দুই মিনিটে বাঁচবে প্রাণ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/protection.png"),
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(height: 30.0),
            CustomButtonWidget(
              onTap: () {
                print("clicked Yes");
                Get.toNamed(AppRoutes.FIRSTQUESTION);
              },
              borderRadius: 24.0,
              text: "যাচাই করুন",
              height: 50.0,
              width: 200,
              color: Colors.lightBlueAccent[700]!,
            )
          ],
        ),
      ),
    );
  }
}
