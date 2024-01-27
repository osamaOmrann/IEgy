import 'package:flutter/material.dart';

void navigate(
    {required BuildContext context, required String route, dynamic arg}) {
  Navigator.pushNamed(context, route, arguments: arg);
}

void navigateLast(
    {required BuildContext context, required String route, dynamic arg}) {
  Navigator.pushNamedAndRemoveUntil(context, route, ModalRoute.withName('/'),
      arguments: arg);
}

class ValidationUtils {
  static bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }
}