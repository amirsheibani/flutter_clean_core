import 'package:flutter_clean_core/core/base/data/local/data_sources/token/token_local_data_source.dart';
import 'package:flutter_clean_core/core/base/domain/entities/token_entity.dart';
import 'package:flutter_clean_core/core/base/domain/entities/token_mapper.dart';
import 'package:flutter_clean_core/core/base/domain/repositories/token/token_repository.dart';
import 'package:flutter_clean_core/core/service/network/network_state/api_result.dart';
import 'package:flutter_clean_core/utils/extension/api_result_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TokenRepository)
class TokenRepositoryImpl extends TokenRepository {
  final TokenLocalDataSource _localDataSource;

  TokenRepositoryImpl(this._localDataSource);

  @override
  Future<Result<TokenEntity?>> readToken() async {
    try {
      final result = await _localDataSource.readToken();
      final TokenEntity? data = result.data?.mapper();
      return Result.success(data: data, message: result.message);
    } catch (e, s) {
      return e.toResult(s);
    }
  }

  @override
  Future<Result<bool>> removeToken() async {
    try {
      final result = await _localDataSource.removeToken();
      return Result.success(data: result.data ?? false, message: result.message);
    } catch (e, s) {
      return e.toResult(s);
    }
  }

  @override
  Future<Result<bool>> saveToken(TokenEntity tokenEntity) async {
    try {
      final result = await _localDataSource.saveToken(tokenEntity.mapper());
      return Result.success(data: result.data, message: result.message);
    } catch (e, s) {
      return e.toResult(s);
    }
  }

  @override
  Future<Result<bool>> updateToken(TokenEntity tokenEntity) async {
    try {
      final removeResult = await _localDataSource.removeToken();
      if (removeResult.data ?? false) {
        final result = await _localDataSource.saveToken(tokenEntity.mapper());
        return Result.success(data: result.data ?? false, message: result.message);
      } else {
        throw (Exception('can not remove token'));
      }
    } catch (e, s) {
      return e.toResult(s);
    }
  }

  @override
  Future<Result<bool>> hasToken() async {
    try {
      final result = await _localDataSource.readToken();
      final TokenEntity? data = result.data?.mapper();
      return Result.success(data: data?.accessToken != null, message: result.message);
    } catch (e, s) {
      return e.toResult(s);
    }
  }
}
