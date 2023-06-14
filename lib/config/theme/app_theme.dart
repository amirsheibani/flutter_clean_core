import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension AppTheme on ThemeData {
  Color get kwInfoSnackBarBackground => brightness == Brightness.light ? const Color(0xFF006FFD) : const Color(0xFF006FFD);

  Color get kwWarningSnackBarBackground => brightness == Brightness.light ? const Color(0xFFF2C94C) : const Color(0xFFF2C94C);

  Color get kwSuccessSnackBarBackground => brightness == Brightness.light ? const Color(0xFF6FCF97) : const Color(0xFF6FCF97);

  Color get kwErrorSnackBarBackground => brightness == Brightness.light ? const Color(0xFFF14B4B) : const Color(0xFFF14B4B);

  Color get kwSplashColor => brightness == Brightness.light ? const Color(0xff626873) : const Color(0xff626873);

  Color get kwScaffoldBackgroundColor => brightness == Brightness.light ? const Color(0xff626873) : const Color(0xff626873);

  Color get kwCanvasColor => brightness == Brightness.light ? const Color(0xFFE7C279) : const Color(0xFFE7C279);

  Color get kwPrimaryColor => brightness == Brightness.light ? const Color(0xFF0D1C31) : const Color(0xFF0D1C31);

  Color get kwBackgroundColor => brightness == Brightness.light ? const Color(0xff626873) : const Color(0xff626873);

  Color get kwProgressIndicatorColor => brightness == Brightness.light ? const Color(0xFF507598) : const Color(0xFF507598);

  Color get kwTextColor => brightness == Brightness.light ? const Color(0xFF000000) : const Color(0xFFFFFFFF);

  Color get kwAppBarColor => brightness == Brightness.light ? const Color(0xFF0D1C31) : const Color(0xFF0D1C31);

  Color get kwStatusBarColor => brightness == Brightness.light ? const Color(0xFF6CA4CB) : const Color(0xFF6CA4CB);

  Color get kwFloatingActionButtonBackgroundColor => brightness == Brightness.light ? const Color(0xFF663E98) : const Color(0xFF663E98);

  Color get kwIconColor => brightness == Brightness.light ? const Color(0xFF663E98) : const Color(0xFF663E98);

  Brightness get statusBarIconBrightness => brightness == Brightness.light ? Brightness.dark : Brightness.light;

  Brightness get statusBarIconBrightnessNot => brightness == Brightness.light ? Brightness.light : Brightness.dark;

  ThemeData theme(String? languageCode) {
    String fontFamily = 'Inter';
    return brightness == Brightness.light
        ? copyWith(
            scaffoldBackgroundColor: kwScaffoldBackgroundColor,
            splashColor: kwSplashColor,
            canvasColor: kwCanvasColor,
            primaryColor: kwPrimaryColor,
            backgroundColor: kwBackgroundColor,
            // primaryColor: Colors.grey.shade900,
            progressIndicatorTheme: progressIndicatorTheme.copyWith(
              color: kwProgressIndicatorColor,
            ),
            textTheme: languageCode == 'en' ? _getDefaultTextTheme(kwTextColor, fontFamily) : _getDefaultPersianTextTheme(kwTextColor, fontFamily),
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: kwAppBarColor,
              systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: kwStatusBarColor),
            ),
            floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
              backgroundColor: kwFloatingActionButtonBackgroundColor,
            ),
            iconTheme: iconTheme.copyWith(color: kwIconColor),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          )
        : copyWith(
            scaffoldBackgroundColor: kwScaffoldBackgroundColor,
            splashColor: kwSplashColor,
            canvasColor: kwCanvasColor,
            primaryColor: kwPrimaryColor,
            backgroundColor: kwBackgroundColor,
            // primaryColor: Colors.grey.shade900,
            progressIndicatorTheme: progressIndicatorTheme.copyWith(
              color: kwProgressIndicatorColor,
            ),
            textTheme: languageCode == 'en' ? _getDefaultTextTheme(kwTextColor, fontFamily) : _getDefaultPersianTextTheme(kwTextColor, fontFamily),
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: kwAppBarColor,
              systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: kwStatusBarColor),
            ),
            floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
              backgroundColor: kwFloatingActionButtonBackgroundColor,
            ),
            iconTheme: iconTheme.copyWith(color: kwIconColor),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          );
  }

  TextTheme _getDefaultTextTheme(Color color, String fontFamily) {
    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(height: 1.2, fontSize: 57, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displayMedium: textTheme.displayMedium?.copyWith(height: 1.2, fontSize: 45, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displaySmall: textTheme.displaySmall?.copyWith(height: 1.2, fontSize: 36, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineLarge: textTheme.headlineLarge?.copyWith(height: 1.2, fontSize: 32, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineMedium: textTheme.headlineMedium?.copyWith(height: 1.2, fontSize: 28, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineSmall: textTheme.headlineSmall?.copyWith(height: 1.2, fontSize: 24, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      titleLarge: textTheme.titleLarge?.copyWith(height: 1.2, fontSize: 22, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleMedium: textTheme.titleMedium?.copyWith(height: 1.2, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleSmall: textTheme.titleSmall?.copyWith(height: 1.2, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelLarge: textTheme.labelLarge?.copyWith(height: 1.2, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelMedium: textTheme.labelMedium?.copyWith(height: 1.2, fontSize: 12, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelSmall: textTheme.labelSmall?.copyWith(height: 1.2, fontSize: 11, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      bodyLarge: textTheme.bodyLarge?.copyWith(height: 1.2, fontSize: 11, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodyMedium: textTheme.bodyMedium?.copyWith(height: 1.2, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodySmall: textTheme.bodySmall?.copyWith(height: 1.2, fontSize: 9, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
    );
  }

  TextTheme _getDefaultPersianTextTheme(Color color, String fontFamily) {
    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(height: 1, fontSize: 57, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displayMedium: textTheme.displayMedium?.copyWith(height: 1, fontSize: 45, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      displaySmall: textTheme.displaySmall?.copyWith(height: 1, fontSize: 36, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineLarge: textTheme.headlineLarge?.copyWith(height: 1, fontSize: 32, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineMedium: textTheme.headlineMedium?.copyWith(height: 1, fontSize: 28, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      headlineSmall: textTheme.headlineSmall?.copyWith(height: 1, fontSize: 24, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      titleLarge: textTheme.titleLarge?.copyWith(height: 1, fontSize: 22, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleMedium: textTheme.titleMedium?.copyWith(height: 1, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      titleSmall: textTheme.titleSmall?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelLarge: textTheme.labelLarge?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelMedium: textTheme.labelMedium?.copyWith(height: 1, fontSize: 12, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      labelSmall: textTheme.labelSmall?.copyWith(height: 1, fontSize: 11, fontWeight: FontWeight.w500, fontFamily: fontFamily, color: color),
      bodyLarge: textTheme.bodyLarge?.copyWith(height: 1, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodyMedium: textTheme.bodyMedium?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
      bodySmall: textTheme.bodySmall?.copyWith(height: 1, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: fontFamily, color: color),
    );
  }
}
