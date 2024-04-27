import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/app_routes.dart';

class TestPageOne extends StatelessWidget {
  const TestPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestPageOne'),
      ),
      body: Column(
        children: [
          Text(
            style: const TextStyle(fontSize: 50, color: Colors.white),
            context.translate(
              LangKeys.appName,
            ),
          ),
          Center(
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
        ],
      ),
    );
  }
}
