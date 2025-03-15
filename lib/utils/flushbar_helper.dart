import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushbarHelper {
  static void showFlushbar(
    BuildContext context, {
    required String message,
    String? title,
    Duration duration = const Duration(seconds: 3),
    FlushbarPosition position = FlushbarPosition.TOP,
  }) {
    Flushbar(
      title: title,
      message: message,
      duration: duration,
      flushbarPosition: position,
    ).show(context);
  }

  static void showErrorFlushbar(
    BuildContext context, {
    required String message,
    String title = 'Error',
  }) {
    Flushbar(
      title: title,
      message: message,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.red,
      icon: const Icon(Icons.error_outline, color: Colors.white),
    ).show(context);
  }

  static void showSuccessFlushbar(
    BuildContext context, {
    required String message,
    String title = 'Success',
  }) {
    Flushbar(
      title: title,
      message: message,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.green,
      icon: const Icon(Icons.check_circle, color: Colors.white),
    ).show(context);
  }
}
