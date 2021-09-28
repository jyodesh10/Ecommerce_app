import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopx/app/shared/colors.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:shopx/app/shared/dimensions.dart';
import 'package:shopx/meta/views/auth/login_view.dart';
import 'package:shopx/meta/views/auth/signup_view.dart';

class LoginView extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vSizedBox3,
          vSizedBox2,
          Container(
            color: Colors.transparent,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      EvaIcons.arrowIosBackOutline,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          vSizedBox4,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Log In",
                //   style: TextStyle(
                //       fontSize: 40,
                //       fontWeight: FontWeight.w900,
                //       color: whiteColor),
                // ),
                vSizedBox2,
                Center(
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: whiteColor),
                  ),
                ),
                // Text(
                //   "We missed You",
                //   style: TextStyle(
                //       fontSize: 26,
                //       fontWeight: FontWeight.w900,
                //       color: whiteColor),
                // ),
              ],
            ),
          ),
          vSizedBox3,
          vSizedBox1,
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
                child: Column(
              children: [
                vSizedBox1,
                stylistTextField("email", emailController),
                vSizedBox1,
                stylistTextField("password", passwordController),
                vSizedBox1,
              ],
            )),
          ),
          vSizedBox4,
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Don't Have An Account?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w100)),
                    TextSpan(
                        text: "Signup",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: SignupView(),
                                    type: PageTransitionType.fade));
                          },
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900))
                  ])),
                  vSizedBox2,
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(1),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(5, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text(
                      "Log In",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

stylistTextField(String text, TextEditingController textEditingController) {
  return TextField(
    controller: textEditingController,
    style: TextStyle(color: whiteColor, fontSize: 18),
    decoration: new InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(EvaIcons.backspace, color: textColor),
        ),
        filled: true,
        hintText: text,
        hintStyle: new TextStyle(color: textColor, fontSize: 18),
        fillColor: bgColor,
        border: new OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(const Radius.circular(10)))),
  );
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.70,
        size.width * 0.17, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.20, size.height, size.width * 0.25, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.40,
        size.width * 0.50, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.60, size.height * 0.85,
        size.width * 0.65, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.70, size.height * 0.90, size.width, 0);
    path.close();

    paint.color = colorThree;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.50);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.80,
        size.width * 0.15, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.45,
        size.width * 0.27, size.height * 0.60);
    path.quadraticBezierTo(
        size.width * 0.45, size.height, size.width * 0.50, size.height * 0.80);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.45,
        size.width * 0.75, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.93, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.55,
        size.width * 0.22, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.90,
        size.width * 0.40, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.50,
        size.width * 0.65, size.height * 0.70);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.85, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
