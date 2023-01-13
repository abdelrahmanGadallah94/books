import 'package:books/constants.dart';
import 'package:books/core/utiles/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.kLogoImage),
        const Text(kSplashTitle,textAlign: TextAlign.center,),
      ],
    );
  }
}
