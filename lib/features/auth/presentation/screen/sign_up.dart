import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/features/auth/presentation/refactors/auth_custom_painter.dart';
import 'package:store_app/features/auth/presentation/refactors/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h),
        painter: AuthCustomPainter(
            gradient: const LinearGradient(colors: [
          Colors.red,
          Colors.blue,
          Colors.green,
        ])),
      ),
      body: const SafeArea(bottom: false, child: SignUpBody()),
    );
  }
}
