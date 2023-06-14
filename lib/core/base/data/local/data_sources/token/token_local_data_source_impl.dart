import 'package:flutter_clean_core/core/base/data/local/data_sources/token/token_local_data_source.dart';
import 'package:flutter_clean_core/core/base/data/local/models/token/token_model.dart';
import 'package:flutter_clean_core/core/base/data/remote/models/base_response.dart';
import 'package:flutter_clean_core/core/di/base/di_setup.dart';
import 'package:flutter_clean_core/core/service/storage/hive/token.dart';
import 'package:flutter_clean_core/utils/constants/const_hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TokenLocalDataSource)
class TokenLocalDataSourceImpl extends TokenLocalDataSource {
  @override
  Future<BaseSingleResponse> saveToken(TokenModel? value) async {
    try {
      Box box = getItCore<Box>();
      final Token token = await box.get(ConstHive.hiveTokenDocument, defaultValue: Token());
      token.tokenType = value?.tokenType;
      token.accessToken = value?.accessToken;
      token.expiresIn = value?.expiresIn;
      token.refreshToken = value?.refreshToken;

      box.put(ConstHive.hiveTokenDocument, token);
      return BaseSingleResponse(message: '', data: true);
    } catch (e) {
      return BaseSingleResponse(message: e.toString(), data: false);
    }
  }

  @override
  Future<BaseSingleResponse<TokenModel>> readToken() async {
    try {
      Box box = getItCore<Box>();
      final Token token = await box.get(ConstHive.hiveTokenDocument, defaultValue: Token());
      return BaseSingleResponse(message: '', data: TokenModel(tokenType: token.tokenType, accessToken: token.accessToken, expiresIn: token.expiresIn, refreshToken: token.refreshToken));
    } catch (e) {
      return BaseSingleResponse(message: e.toString(), data: null);
    }
  }

  @override
  Future<BaseSingleResponse<bool>> removeToken() async {
    try {
      Box box = getItCore<Box>();
      await box.delete(ConstHive.hiveTokenDocument);
      return BaseSingleResponse(message: '', data: true);
    } catch (e) {
      return BaseSingleResponse(message: e.toString(), data: false);
    }
  }
}
