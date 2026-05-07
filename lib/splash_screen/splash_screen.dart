import 'package:basic_curd/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacementNamed("/home");
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPurple1,
      body: Center(
        child: SvgPicture.asset("assets/logo.svg"),
      ),
    );
  }
}
