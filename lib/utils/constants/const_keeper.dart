import 'package:flutter/material.dart';
import 'package:flutter_clean_core/utils/constants/environment.dart';

late Environment environment;

class ConstKeeper {
  static String buildNumber = '';
  static String version = '';
  static String? firebaseToken = '';
  static String? phoneModel = '';

  static const String deeplinkSchema = "apollon://deeplink/";

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldMessengerState> snackBarKey = GlobalKey<ScaffoldMessengerState>();
}
