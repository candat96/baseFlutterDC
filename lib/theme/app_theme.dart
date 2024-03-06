import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// Styles
import 'app_styles.dart';

// Colors
import 'dark_theme_colors.dart';
import 'light_theme_colors.dart';

// Prefs
import '../../app/data/app_shared_pref.dart';

class AppTheme {
  static getThemeData({required bool isLight}) {
    print(isLight);
    return ThemeData(
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5).r,
              );
            },
          ),
        ),
      ),
      // main color (app bar,tabs..etc)
      primaryColor: isLight
          ? LightThemeColors.primaryColor
          : DarkThemeColors.primaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: isLight
            ? LightThemeColors.accentColor
            : DarkThemeColors.accentColor, 
        background: isLight
            ? LightThemeColors.backgroundColor
            : DarkThemeColors.backgroundColor,
      ),
      // color contrast (if the theme is dark text should be white for example)
      //brightness: isLight ? Brightness.light : Brightness.dark,
      // card widget background color
      cardColor:
          isLight ? LightThemeColors.cardColor : DarkThemeColors.cardColor,
      // hint text color
      hintColor: isLight
          ? LightThemeColors.hintTextColor
          : DarkThemeColors.hintTextColor,
      // divider color
      dividerColor: isLight
          ? LightThemeColors.dividerColor
          : DarkThemeColors.dividerColor,
      // app background color
      scaffoldBackgroundColor: isLight
          ? LightThemeColors.scaffoldBackgroundColor
          : DarkThemeColors.scaffoldBackgroundColor,

      // progress bar theme
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: isLight
            ? LightThemeColors.primaryColor
            : DarkThemeColors.primaryColor,
      ),

      // appBar theme
      appBarTheme: AppStyles.getAppBarTheme(isLightTheme: isLight),

      // elevated button theme
      elevatedButtonTheme:
          AppStyles.getElevatedButtonTheme(isLightTheme: isLight),

      // text theme
      textTheme: AppStyles.getTextTheme(isLightTheme: isLight),

      // chip theme
      chipTheme: AppStyles.getChipTheme(isLightTheme: isLight),

      // icon theme
      iconTheme: AppStyles.getIconTheme(isLightTheme: isLight),

      // radio button theme
      radioTheme: AppStyles.getRadioTheme(isLightTheme: isLight),
    );
  }

  /// update app theme and save theme type to shared pref
  /// (so when the app is killed and up again theme will remain the same)
  static changeTheme() {
    // *) check if the current theme is light (default is light)
    bool isLightTheme = AppSharedPref.getThemeIsLight();
    // *) store the new theme mode on get storage
    AppSharedPref.setThemeIsLight(!isLightTheme);
    // *) let GetX change theme
    Get.changeThemeMode(!isLightTheme ? ThemeMode.light : ThemeMode.dark);
  }

  /// check if the theme is light or dark
  bool get getThemeIsLight => AppSharedPref.getThemeIsLight();
}
