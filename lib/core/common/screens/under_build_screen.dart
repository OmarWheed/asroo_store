import 'package:flutter/material.dart';
import 'package:store_app/core/style/images/app_images.dart';

class UnderBuildScreen extends StatelessWidget {
  const UnderBuildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('Default'),
      ),
      body: Center(child: Image.asset(AppImages.pageUnderBuild)),
    );
  }
}
