import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopx/app/shared/colors.dart';
import 'package:shopx/meta/views/auth/signup_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: SignupView(), type: PageTransitionType.leftToRight)));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "ShopX",
                style: TextStyle(
                    fontSize: 50,
                    color: whiteColor,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ));
  }
}
