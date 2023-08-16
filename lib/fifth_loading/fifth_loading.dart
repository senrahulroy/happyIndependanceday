import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:india/const.dart';
import 'package:lottie/lottie.dart';

import '../app_assets.dart';

class FifthLoading extends StatefulWidget {
  const FifthLoading({super.key});

  @override
  State<FifthLoading> createState() => _FifthLoadingState();
}

class _FifthLoadingState extends State<FifthLoading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Lottie.asset(
                AppAssets.indiaFlag,
              ),
            ),
            Flexible(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                      'Follow me  :   @everythingwithflutter',textStyle: TextStyles.textStyleBlue,textAlign: TextAlign.center),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
