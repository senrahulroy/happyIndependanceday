import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:india/const.dart';
import 'package:india/fifth_loading/fifth_loading.dart';
import 'package:india/hero_tag.dart';
import 'package:lottie/lottie.dart';

import '../app_assets.dart';

class FourthLoading extends StatefulWidget {
  const FourthLoading({super.key});

  @override
  State<FourthLoading> createState() => _FourthLoadingState();
}

class _FourthLoadingState extends State<FourthLoading> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder:(context) => const FifthLoading(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80,),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(AppString.happyIndependence,
                  textStyle: TextStyles.textStyleOrange),
            ],
            repeatForever: true,
          ),
          Expanded(

            child: Lottie.asset(
              AppAssets.happy,
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Text(
                  'From',
                  style: TextStyles.textStyleGreenLarge ,
                ),
                const SizedBox(width: 20.0, height: 100.0),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText(AppString.kiraat,
                        textStyle: TextStyles.textStyleOrangeLarge),
                    RotateAnimatedText(AppString.technology,
                        textStyle: TextStyles.textStyleBlueLarge),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 80,),
        ],
      ),
    );
  }
}
