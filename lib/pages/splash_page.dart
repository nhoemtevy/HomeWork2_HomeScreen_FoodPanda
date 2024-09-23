import 'package:flutter/material.dart';

import '../core/values/app_colors.dart';
import '../core/values/text_styles.dart';
import 'home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static const id = "splash_page";

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the home page
      Navigator.pushReplacementNamed(context, HomePage.id);
    });

    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/app_logo.png"),
            Text(
              "foodpanda",
              style: textStyleF42W600(color: logoColor),
            ),
          ],
        ),
      ),
    );
  }
}
