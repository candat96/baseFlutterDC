import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarUtils {
  static void showSuccess(String message, {String? title, Duration? duration}) {
    Get.rawSnackbar(
      snackPosition: SnackPosition.TOP,
      messageText: Text(
        message,
        style: const TextStyle(fontSize: 14, color: Colors.black),
      ),
      backgroundColor: Colors.green.shade200,
      duration: duration ?? const Duration(milliseconds: 1500),
      margin: const EdgeInsets.only(left: 12, right: 12),
      borderRadius: 8,
    );
  }

  static void showError(String message, {String? title, Duration? duration}) {
    Get.rawSnackbar(
      snackPosition: SnackPosition.TOP,
      messageText: Text(
        message,
        style: const TextStyle(fontSize: 14, color: Colors.black),
      ),
      backgroundColor: Colors.red.shade200,
      duration: duration ?? const Duration(milliseconds: 1500),
      margin: const EdgeInsets.only(left: 12, right: 12),
      borderRadius: 8,
    );
  }
}
