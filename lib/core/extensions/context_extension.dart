import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future pushName(String name, {Object? arg}) {
    return Navigator.of(this).pushNamed(name, arguments: arg);
  }

  Future pushReplacementNamed(String name, {Object? arg}) {
    return Navigator.of(this).pushReplacementNamed(name, arguments: arg);
  }

  Future pushNameAnd(String name, {Object? arg}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(name, (route) => false, arguments: arg);
  }

  void pop(String name) {
    return Navigator.of(this).pop();
  }
}
