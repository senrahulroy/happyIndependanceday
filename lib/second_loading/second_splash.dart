import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:india/app_assets.dart';
import 'package:india/const.dart';
import 'package:india/hero_tag.dart';
import 'package:india/third_loading/third_splash.dart';
import 'package:lottie/lottie.dart';

class SecondLoading extends StatefulWidget {
  const SecondLoading({super.key});

  @override
  State<SecondLoading> createState() => _IndiaLoadingState();
}

class _IndiaLoadingState extends State<SecondLoading> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder:(context) => const ThirdLoading(),));
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
                ScaleAnimatedText(AppString.welcome,textStyle: TextStyles.textStyleOrange),
                ScaleAnimatedText(AppString.to,textStyle: TextStyles.textStyleBlue),
                ScaleAnimatedText(AppString.india,textStyle: TextStyles.textStyleGreen),
              ]),
            ),
            Center(
                child: Hero(
                    tag: HeroTage.tag,
                    child: Lottie.asset(AppAssets.loadingFlag))),
          ],
        ),
      ),
    );
  }
}
