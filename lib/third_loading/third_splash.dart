import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:india/app_assets.dart';
import 'package:india/const.dart';
import 'package:india/fifth_loading/fifth_loading.dart';
import 'package:india/fourth_loading/fourth_loading.dart';
import 'package:india/hero_tag.dart';
import 'package:lottie/lottie.dart';

class ThirdLoading extends StatefulWidget {
  const ThirdLoading({super.key});

  @override
  State<ThirdLoading> createState() => _IndiaLoadingState();
}

class _IndiaLoadingState extends State<ThirdLoading> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder:(context) => const FifthLoading(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
            child: Center(
              child: Hero(
                tag: HeroTage.tag,
                child: Lottie.asset(AppAssets.arrowPlane, repeat: true),
              ),
            ),
          ),
          Center(
              child: Hero(
                  tag: HeroTage.tag,
                  child: Lottie.asset(AppAssets.leftRight))),
        ],
      ),
    );
  }
}
