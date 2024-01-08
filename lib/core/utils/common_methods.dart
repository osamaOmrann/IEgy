import 'package:flutter/material.dart';

void navigateLast(
    {required BuildContext context, required String route, dynamic arg}) {
  Navigator.pushNamedAndRemoveUntil(context, route, ModalRoute.withName('/'),
      arguments: arg);
}
