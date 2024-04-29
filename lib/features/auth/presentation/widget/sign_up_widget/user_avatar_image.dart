import 'package:flutter/material.dart';
import 'package:store_app/core/common/animations/animate_do.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomFadeInDown(
      duration: 500,
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1714165860646-b8de17af3bc8?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
        radius: 30,
      ),
    );
  }
}
