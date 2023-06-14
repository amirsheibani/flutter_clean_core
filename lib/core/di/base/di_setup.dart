import 'dart:io';

import 'package:flutter_clean_core/core/di/network/di/network_module.dart';
import 'package:flutter_clean_core/core/service/storage/hive/global_config.dart';
import 'package:flutter_clean_core/core/service/storage/hive/token.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'di_setup.config.dart';

final GetIt getItCore = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetItCore', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureCoreDependencies() async {
  HttpOverrides.global = MyHttpOverrides();
  await Hive.initFlutter();

  Hive.registerAdapter(GlobalConfigAdapter());
  Hive.registerAdapter(TokenAdapter());
  $initGetItCore(getItCore);
}
