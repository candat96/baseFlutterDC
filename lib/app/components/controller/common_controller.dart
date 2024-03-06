import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class CommonController extends GetxController {


  final _isLogin = false.obs;
  final _userProfile = {}.obs;

  // ignore: invalid_use_of_protected_member
  Map<dynamic, dynamic> get userProfile => _userProfile.value;
  bool get isLogin => _isLogin.value;

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback(((_) async {
      // do something
    }));
  }

}
