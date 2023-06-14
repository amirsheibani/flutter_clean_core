import 'package:flutter_clean_core/core/base/data/model/user_data_from_token_model.dart';
import 'package:flutter_clean_core/core/base/domain/entities/user_data_from_token_entity.dart';
import 'package:flutter_clean_core/core/base/domain/entities/user_data_from_token_mapper.dart';
import 'package:flutter_clean_core/core/base/domain/repositories/token/token_repository.dart';
import 'package:flutter_clean_core/core/base/domain/usecase/base_usecase.dart';
import 'package:flutter_clean_core/core/service/network/network_state/api_result.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

@lazySingleton
class UserFromTokenUseCase extends BaseUseCaseNoArgs<Result<UserDataFromTokenEntity?>> {
  final TokenRepository _repository;

  UserFromTokenUseCase(this._repository);

  @override
  Future<Result<UserDataFromTokenEntity?>> call() async {
    final result = await _repository.readToken();
    return result.whenOrNull(success: (data, message) {
          Map<String, dynamic> decodedToken = JwtDecoder.decode(data!.accessToken!);
          final UserDataFromTokenEntity? userData = UserDataFromTokenModel.fromJson(decodedToken).mapper();
          return Result<UserDataFromTokenEntity?>.success(data: userData);
        }) ??
        const Result<UserDataFromTokenEntity?>.success(data: null);
  }
}
