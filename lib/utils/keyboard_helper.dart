import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KeyboardHelper {
  KeyboardHelper._();

  static void closeKeyboard() {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
    FocusManager.instance.primaryFocus?.unfocus();
  }
}