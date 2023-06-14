import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension AppTheme on ThemeData {
  Color get coreBackground => brightness == Brightness.light ? const Color(0xFF212939) : const Color(0xFF212939);

  Color get corePrimary => brightness == Brightness.light ? const Color(0xFF1EA6D9) : const Color(0xFF1EA6D9);
  Color get corePrimary100 => brightness == Brightness.light ? const Color(0xFFB3E1F3) : const Color(0xFFB3E1F3);
  Color get corePrimary200 => brightness == Brightness.light ? const Color(0xFF9AD7EF) : const Color(0xFF9AD7EF);
  Color get corePrimary300 => brightness == Brightness.light ? const Color(0xFF81CDEA) : const Color(0xFF81CDEA);
  Color get corePrimary400 => brightness == Brightness.light ? const Color(0xFF68C4E6) : const Color(0xFF68C4E6);
  Color get corePrimary500 => brightness == Brightness.light ? const Color(0xFF50BAE1) : const Color(0xFF50BAE1);
  Color get corePrimary600 => brightness == Brightness.light ? const Color(0xFF37B0DD) : const Color(0xFF37B0DD);
  Color get coreSecondary => brightness == Brightness.light ? const Color(0xFFDA9510) : const Color(0xFFDA9510);
  Color get coreSecondary100 => brightness == Brightness.light ? const Color(0xFFF5F0E4) : const Color(0xFFF5F0E4);
  Color get coreSecondary200 => brightness == Brightness.light ? const Color(0xFFF0E1C0) : const Color(0xFFF0E1C0);
  Color get coreSecondary300 => brightness == Brightness.light ? const Color(0xFFECD29D) : const Color(0xFFECD29D);
  Color get coreSecondary400 => brightness == Brightness.light ? const Color(0xFFE7C279) : const Color(0xFFE7C279);
  Color get coreSecondary500 => brightness == Brightness.light ? const Color(0xFFE3B355) : const Color(0xFFE3B355);
  Color get coreSecondary600 => brightness == Brightness.light ? const Color(0xFFDEA433) : const Color(0xFFDEA433);
  Color get coreTertiary => brightness == Brightness.light ? const Color(0xFF663E98) : const Color(0xFF663E98);
  Color get coreTertiary100 => brightness == Brightness.light ? const Color(0xFFD2CDE8) : const Color(0xFFD2CDE8);
  Color get coreTertiary200 => brightness == Brightness.light ? const Color(0xFFC0B5DB) : const Color(0xFFC0B5DB);
  Color get coreTertiary300 => brightness == Brightness.light ? const Color(0xFFAE9DCD) : const Color(0xFFAE9DCD);
  Color get coreTertiary400 => brightness == Brightness.light ? const Color(0xFF9C86C0) : const Color(0xFF9C86C0);
  Color get coreTertiary500 => brightness == Brightness.light ? const Color(0xFF8A6EB3) : const Color(0xFF8A6EB3);
  Color get coreTertiary600 => brightness == Brightness.light ? const Color(0xFF7856A5) : const Color(0xFF7856A5);
  Color get coreBase => brightness == Brightness.light ? const Color(0xFF0D0F19) : const Color(0xFF0D0F19);
  Color get coreBase100 => brightness == Brightness.light ? const Color(0xFF0F54A6) : const Color(0xFF0F54A6);
  Color get coreBase200 => brightness == Brightness.light ? const Color(0xFF0D498E) : const Color(0xFF0D498E);
  Color get coreBase300 => brightness == Brightness.light ? const Color(0xFF0D3E77) : const Color(0xFF0D3E77);
  Color get coreBase400 => brightness == Brightness.light ? const Color(0xFF0D325F) : const Color(0xFF0D325F);
  Color get coreBase500 => brightness == Brightness.light ? const Color(0xFF0D2749) : const Color(0xFF0D2749);
  Color get coreBase600 => brightness == Brightness.light ? const Color(0xFF0D1C31) : const Color(0xFF0D1C31);
  Color get coreSuccess => brightness == Brightness.light ? const Color(0xFF5DB242) : const Color(0xFF5DB242);
  Color get coreSuccess100 => brightness == Brightness.light ? const Color(0xFFCFF2C3) : const Color(0xFFCFF2C3);
  Color get coreSuccess200 => brightness == Brightness.light ? const Color(0xFFBCE8AD) : const Color(0xFFBCE8AD);
  Color get coreSuccess300 => brightness == Brightness.light ? const Color(0xFFA9DD98) : const Color(0xFFA9DD98);
  Color get coreSuccess400 => brightness == Brightness.light ? const Color(0xFF96D282) : const Color(0xFF96D282);
  Color get coreSuccess500 => brightness == Brightness.light ? const Color(0xFF83C76D) : const Color(0xFF83C76D);
  Color get coreSuccess600 => brightness == Brightness.light ? const Color(0xFF70BD57) : const Color(0xFF70BD57);
  Color get coreDanger => brightness == Brightness.light ? const Color(0xFFF64423) : const Color(0xFFF64423);
  Color get coreDanger100 => brightness == Brightness.light ? const Color(0xFFFFC8BE) : const Color(0xFFFFC8BE);
  Color get coreDanger200 => brightness == Brightness.light ? const Color(0xFFFDB2A4) : const Color(0xFFFDB2A4);
  Color get coreDanger300 => brightness == Brightness.light ? const Color(0xFFFC9C8A) : const Color(0xFFFC9C8A);
  Color get coreDanger400 => brightness == Brightness.light ? const Color(0xFFFA8670) : const Color(0xFFFA8670);
  Color get coreDanger500 => brightness == Brightness.light ? const Color(0xFFF97057) : const Color(0xFFF97057);
  Color get coreDanger600 => brightness == Brightness.light ? const Color(0xFFF75A3D) : const Color(0xFFF75A3D);

  Brightness get statusBarIconBrightness => brightness == Brightness.light ? Brightness.dark : Brightness.light;

  Brightness get statusBarIconBrightnessNot => brightness == Brightness.light ? Brightness.light : Brightness.dark;

  ThemeData theme(String? languageCode) {
    String fontFamily = 'Inter';
    return brightness == Brightness.light
        ? copyWith(
            scaffoldBackgroundColor: coreBackground,
            splashColor: coreBase500,
            canvasColor: coreBase500,
            primaryColor: corePrimary,
            backgroundColor: coreBackground,
            // primaryColor: Colors.grey.shade900,
            progressIndicatorTheme: progressIndicatorTheme.copyWith(
              color: coreTertiary500,
            ),
            textTheme: languageCode == 'en' ? _getDefaultTextTheme(corePrimary100, fontFamily) : _getDefaultPersianTextTheme(corePrimary100, fontFamily),
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: coreBase600,
              systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: coreBase600),
            ),
            floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
              backgroundColor: coreBase100,
            ),
            iconTheme: iconTheme.copyWith(color: corePrimary100),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          )
        : copyWith(
            scaffoldBackgroundColor: coreBackground,
            splashColor: coreBase500,
            canvasColor: coreBase500,
            primaryColor: corePrimary,
            backgroundColor: coreBackground,
            // primaryColor: Colors.grey.shade900,
            progressIndicatorTheme: progressIndicatorTheme.copyWith(
              color: coreTertiary500,
            ),
            textTheme: languageCode == 'en' ? _getDefaultTextTheme(corePrimary100, fontFamily) : _getDefaultPersianTextTheme(corePrimary100, fontFamily),
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: coreBase600,
              systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: coreBase600),
            ),
            floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
              backgroundColor: coreBase100,
            ),
            iconTheme: iconTheme.copyWith(color: corePrimary100),
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
