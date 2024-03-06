//import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
// import '../app/components/app_dialog.dart';

class PermissionUtils {
  static Future<PermissionStatus> requestPhotoPermission() async {
    PermissionStatus result;

    //const permissionMessage = 'Ứng dụng này đang yêu cầu quyền truy cập vào máy ảnh. Vui lòng cho phép truy cập vào "Camera" từ cài đặt.';
    result = await Permission.photos.request();

    // if (result.isPermanentlyDenied) {
    //   AppDialog.showConfirmPopup(
    //     onCancel: () => {Get.back()},
    //     onSubmit: () => {PermissionUtils.openSetting()},
    //     message: permissionMessage,
    //     cancelLabel: 'Cài đặt',
    //     submitLabel: 'Hủy',
    //   );
    // }
    return result;
  }

  // static Future<PermissionStatus> requestCameraPermission() async {
  //   const permissionMessage = "本アプリがカメラのアクセスを求めています。設定から「カメラ」のアクセス許可をしてください。";
  //   PermissionStatus result;
  //   result = await Permission.camera.request();
  //   if (result.isPermanentlyDenied) {
  //     AppDialog.showConfirmPopup(
  //       onSubmit: () => {Get.back()},
  //       onCancel: () => {PermissionUtils.openSetting()},
  //       message: permissionMessage,
  //       cancelLabel: '写真へのアクセス',
  //       submitLabel: 'キャンセル',
  //     );
  //   }
  //   return result;
  // }

  static void openSetting() {
    openAppSettings();
  }
}
