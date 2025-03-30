import 'package:bloc_project/const/app_color.dart';
import 'package:bloc_project/const/app_dimensions.dart';
import 'package:bloc_project/const/app_path.dart';
import 'package:bloc_project/routers/app_router_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppPath.background,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 270,
            right: 40,
            child: Container(
              width: 64.7,
              height: 64.7,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [
                    AppColor.purple_50,
                    AppColor.purple_50.withOpacity(0.75),
                    AppColor.purple_50.withOpacity(0.25),
                    AppColor.purple_50.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: getHeight(context) * 0.05,
            right: getWidth(context) * 0.01,
            left: getWidth(context) * 0.01,
            child: Image.asset(AppPath.images_splash),
          ),
          Positioned(
            top: getHeight(context) * 0.5,
            right: getWidth(context) * 0.2,
            child: Text(
              textAlign: TextAlign.center,
              'Let’s meet new \n people around you',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: AppColor.cBlack,
              ),
            ),
          ),
          Positioned(
            bottom: getHeight(context) * 0.3,
            left: 30,
            child: Container(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      width: getWidth(context) * 0.85,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColor.color47,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -10,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: SvgPicture.asset(AppPath.ic_google),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: getHeight(context) * 0.22,
            left: 30,
            child: Container(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      width: getWidth(context) * 0.85,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColor.cBlue_50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Continue with Facebook',
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -10,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: SvgPicture.asset(AppPath.ic_facebook),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: getHeight(context) * 0.14,
            left: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutePath.homePage);
              },
              child: Container(
                width: getWidth(context) * 0.85,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColor.cDarkPurple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Use mobile number',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: getWidth(context) * 0.2,
            bottom: getHeight(context) * 0.1,
            child: RichText(
              text: TextSpan(
                text: 'Don’t have an account? ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColor.cBlack,
                ),
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: AppColor.cBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
