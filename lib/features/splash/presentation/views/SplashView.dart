import 'package:flutter/material.dart';
import 'package:slashinternship/features/splash/presentation/widgets/SplashViewBody.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});
  static String id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpalshViewBody(),
    );
  }
}
