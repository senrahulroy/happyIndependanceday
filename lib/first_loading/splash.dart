import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:india/app_assets.dart';
import 'package:india/const.dart';
import 'package:india/hero_tag.dart';
import 'package:india/second_loading/second_splash.dart';
import 'package:lottie/lottie.dart';

class IndiaLoading extends StatefulWidget {
  const IndiaLoading({super.key});

  @override
  State<IndiaLoading> createState() => _IndiaLoadingState();
}

class _IndiaLoadingState extends State<IndiaLoading> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder:(context) => const SecondLoading(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Stack(
          children: <Widget>[
            Center(
              child: AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText(
                  AppString.loadingIndia,
                  textStyle: TextStyles.textStyleBlue,
                ),
              ]),
            ),
            Center(
                child: Lottie.asset(AppAssets.waveFlag)),
          ],
        ),
      ),
    );
  }
}
