import 'package:flutter_clean_core/utils/constants/const_hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class LocalModule {
  @singleton
  Future<Box<dynamic>> get box => _getBox();

  Future<Box<dynamic>> _getBox() async {
    var box = await Hive.openBox(ConstHive.hiveBox);
    return box;
  }
}
