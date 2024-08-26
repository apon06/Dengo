// ignore_for_file: constant_identifier_names

import 'package:dengugo/Presentation/AllScreen/Questions/firstquestion.dart';
import 'package:dengugo/Presentation/AllScreen/Questions/secondquestion.dart';
import 'package:dengugo/Presentation/AllScreen/Questions/thirdquestion.dart';
import 'package:dengugo/Presentation/AllScreen/Questions/fourthquestion.dart';
import 'package:dengugo/Presentation/AllScreen/Questions/fifthquestion.dart';
import 'package:dengugo/Presentation/AllScreen/Questions/sixthquestion.dart';
import 'package:dengugo/Presentation/AllScreen/Questions/seventhquestion.dart';
import 'package:dengugo/Presentation/AllScreen/Questions/eighthquestion.dart';
import 'package:dengugo/Presentation/AllScreen/mainscreen.dart';
import 'package:dengugo/Presentation/AllScreen/splash_screen.dart';
import 'package:dengugo/Presentation/AllScreen/positiveresult.dart';
import 'package:dengugo/Presentation/AllScreen/hospitals.dart';
import 'package:get/get.dart';


class AppRoutes {
  static const String INITAL = "/";
  static const String FIRSTQUESTION = "/firstscreen";
  static const String SECONDQUESTION = "/secondscreen";
  static const String THIRDQUESTION = "/thirdscreen";
  static const String FOURTHQUESTION = "/fourthscreen";
  static const String FIFTHQUESTION = "/fifthscreen";
  static const String SIXTHQUESTION = "/sixthscreen";
  static const String SEVENTHQUESTION = "/seventhscreen";
  static const String EIGHTHQUESTION = "/eighthscreen";
  static const String MAINSCREEN = "/mainscreen";
  static const String POSITIVERESULT = "/positiveresult";
  static const String HOSPITALS = "/hospitals";

  static List<GetPage> routes = [
    GetPage(
        name: INITAL,
        page: () => const SplashScreen(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: FIRSTQUESTION,
        page: () => const FirstQuestion(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: SECONDQUESTION,
        page: () => const SecondQuestion(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: THIRDQUESTION,
        page: () => const ThirdQuestion(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: FOURTHQUESTION,
        page: () => const FourthQuestion(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: FIFTHQUESTION,
        page: () => const FifthQuestion(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: SIXTHQUESTION,
        page: () => const SixthQuestion(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: SEVENTHQUESTION,
        page: () => const SeventhQuestion(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: EIGHTHQUESTION,
        page: () => const EighthQuestion(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: MAINSCREEN,
        page: () => const MainScreen(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),

    GetPage(
        name: POSITIVERESULT,
        page: () => const PositiveResult(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),
    GetPage(
        name: HOSPITALS,
        page: () => const Hospitals(),
        transitionDuration: const Duration(milliseconds: 100),
        transition: Transition.zoom),
  ];
}
