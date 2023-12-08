import 'package:fluter_example2/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UserLottie extends StatelessWidget {
  final double? height;
  final double? width;
  const UserLottie({super.key, this.height = 300, this.width = 300});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Lottie.asset(Assets.lottiesRestaurantLogo, height: height, width: width));
  }
}
