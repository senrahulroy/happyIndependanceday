import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:india/app_assets.dart';
import 'package:india/hero_tag.dart';
import 'package:lottie/lottie.dart';

class WelcomeToIndia extends StatefulWidget {
  const WelcomeToIndia({super.key});

  @override
  State<WelcomeToIndia> createState() => _WelcomeToIndiaState();
}

class _WelcomeToIndiaState extends State<WelcomeToIndia> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => const InternetChecker(child: DeshBoard(),)));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
      children: [
          Expanded(
            child: Lottie.asset(
              AppAssets.arrowPlane,
            ),
          ),
          Expanded(
            child: Lottie.asset(
              AppAssets.happy,
            ),
          ),
          Expanded(
            child: Lottie.asset(
              AppAssets.leftRight,
            ),
          ),
          Expanded(
            child: Lottie.asset(
              AppAssets.loadingFlag,
            ),
          ),
          Expanded(
            child: Lottie.asset(
              AppAssets.loading,
            ),
          ),
        Expanded(
          child: Lottie.asset(
            AppAssets.plan,
          ),
        ),
        Expanded(
          child: Lottie.asset(
            AppAssets.waveFlag,
          ),
        ),
          // AnimatedTextKit(
          //   animatedTexts: [
          //     FadeAnimatedText(AppString.kiraatTechnology,textStyle: TextStyle(color: Colors.red)),
          //   ],
          //   isRepeatingAnimation: true,
          // ),
      ],
    ),
        ));
  }
}
