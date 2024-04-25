import 'package:flutter/material.dart';

class TestPageTwo extends StatelessWidget {
  const TestPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('TestPageTwo'),
      ),
      body: const Center(
        child: Text('This is TestPageOne'),
      ),
    );
  }
}
