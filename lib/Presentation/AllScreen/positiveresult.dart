import 'package:dengugo/Core/app_routes.dart';
import 'package:dengugo/Presentation/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PositiveResult extends StatefulWidget {
  const PositiveResult({super.key});

  @override
  State<PositiveResult> createState() => _PositiveResultState();
}

class _PositiveResultState extends State<PositiveResult> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'VEFz8E0pOeg',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

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
            const Image(
              image: AssetImage("assets/logo.png"),
              width: 150,
              height: 150,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 5.0),
            const Text(
              "সাবধান! আপনি ডেঙ্গু আক্রান্ত।",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomButtonWidget(
                color: Colors.red,
                onTap: () {
                  print("clicked get health service");
                  _controller.pause();
                  Get.toNamed(AppRoutes.HOSPITALS);
                },
                borderRadius: 24,
                text: "চিকিৎসা সেবা পেতে চাই",
                height: 40.0,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomButtonWidget(
                onTap: () {
                  print("clicked get health service");
                  _controller.pause();
                  Get.toNamed(AppRoutes.FIRSTQUESTION);
                },
                borderRadius: 24,
                text: "পুনরায় যাচাই করতে চাই",
                height: 40.0,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
