import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopx/app/shared/colors.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:shopx/app/shared/dimensions.dart';
import 'package:shopx/meta/views/auth/login_view.dart';

class SignupView extends StatelessWidget {
  final nameController = TextEditingController();
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
                Text(
                  "Hey There",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: whiteColor),
                ),
                vSizedBox2,
                Text(
                  "Welcome to Shopx",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: whiteColor),
                ),
                Text(
                  "Fill in your details",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: whiteColor),
                ),
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
                stylistTextField("name", nameController),
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
                        text: "Already Have An Account?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w100)),
                    TextSpan(
                        text: "Login",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: LoginView(),
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
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "Sign up",
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
