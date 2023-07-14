import 'package:flutter/material.dart';
import 'package:getx_task_manager/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) => null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8875FF),
      body: Center(
        child: Image.asset(
          Assets.images.logoNoBackground.path,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
