import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/routes/app_routes.dart';

class TestPageOne extends StatelessWidget {
  const TestPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestPageOne'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushName(PagesName.testPageTwo);
          },
          child: const Text(
            'GoTestPageTwo',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
