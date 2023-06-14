import 'package:flutter_clean_core/core/validators/regexes.dart';

mixin Validators {
  String? validateRequired(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return 'this field is required';
    } else {
      return null;
    }
  }

  String? validateMobile(
    String? value,
  ) {
    var pattern = Regex.mobileRegex;
    var regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'phone number is required';
    } else if (value.length != 10) {
      return 'phone number must be 10 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'phone number must be digits';
    }
    return null;
  }

  String? validate6DigitCode(
    String? value,
  ) {
    var pattern = Regex.sixDigitRegex;
    var regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'passcode is required';
    } else if (value.length != 6) {
      return 'passcode must be 6 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'passcode must be digits';
    }
    return null;
  }

  String? validateEmail(String? value) {
    var pattern = Regex.emailRegex;
    var regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'email is required';
    } else if (!regExp.hasMatch(value)) {
      return 'invalid email';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    var pattern = Regex.passwordRegex;
    var regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return null;
    } else if (!regExp.hasMatch(value)) {
      return 'invalid password';
    } else {
      return null;
    }
  }
}
