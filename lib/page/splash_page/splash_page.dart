import 'package:bloc_project/const/app_path.dart';
import 'package:bloc_project/routers/app_router_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void navigate() {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.pushReplacementNamed(context, AppRoutePath.mainPage);
    });
  }

  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) {
        return SplashBloc(SplashState())..add(SplashEventNavigate(context));
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 130,
                    child: Image.asset(AppPath.ic_splash),
                  ),
                  Text(
                    'FACEBOOK',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: 100,
              height: 100,
              child: Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 60,
                    child: Image.asset(
                      AppPath.ic_logo_splash,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nnnn(SplashState state, BuildContext context) {
    return InkWell(
      onTap: () => BlocProvider.of<SplashBloc>(context).add(SplashEventIsCheck()),
      child: Container(
        height: 100,
        width: 100,
        color: state.isCheck ?? false ? Colors.red : Colors.green,
      ),
    );
  }
}
