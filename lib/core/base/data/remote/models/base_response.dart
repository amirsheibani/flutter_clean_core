import 'package:flutter_clean_core/core/base/data/remote/models/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.g.dart';

class BaseResponse {
  @JsonKey(name: 'message')
  final String? message;
  BaseResponse({this.message});

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      message: json["message"],
    );
  }
}

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponse<T> extends BaseResponse {
  List<T>? contents;

  BaseListResponse({
    String? message,
    this.contents,
  }) : super(
          message: message,
        );

  factory BaseListResponse.fromJson(Map<String, dynamic> json, Function(Map<String, dynamic>) create) {
    var contents = <T>[];
    json['data']['content'].forEach((v) {
      contents.add(create(v));
    });

    return BaseListResponse<T>(message: json["message"], contents: contents);
  }
}

@JsonSerializable(genericArgumentFactories: true)
class BaseSingleResponse<T> extends BaseResponse {
  T? data;

  BaseSingleResponse({
    String? message,
    this.data,
  }) : super(
          message: message,
        );

  factory BaseSingleResponse.fromJson(Map<String, dynamic>? json, Function(Map<String, dynamic>) create) {
    return BaseSingleResponse<T>(
      message: json?["message"],
      data: json?['data'] != null ? create(json?['data']) : null,
    );
  }
}

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponseWithPages<T> extends BaseListResponse<T> {
  Pagination? pagination;
  BaseListResponseWithPages({
    this.pagination,
    String? message,
    List<T>? contents,
  }) : super(
          contents: contents,
          message: message,
        );

  factory BaseListResponseWithPages.fromJson(Map<String, dynamic>? json, Function(Map<String, dynamic>) create) {
    var contents = <T>[];
    json?['data']['content'].forEach((v) {
      contents.add(create(v));
    });

    var pagination = Pagination.fromJson(json?['data']['pagination']);

    return BaseListResponseWithPages<T>(
      contents: contents,
      pagination: pagination,
    );
  }
}
