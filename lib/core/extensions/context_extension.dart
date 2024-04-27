import 'package:flutter/material.dart';
import 'package:store_app/core/language/app_localizations.dart';

extension ContextExtension on BuildContext {
  //Translate
  String translate(String key) {
    return AppLocalizations.of(this)!.translate(key).toString();
  }

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
