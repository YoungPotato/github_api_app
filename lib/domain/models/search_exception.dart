import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_exception.g.dart';

@JsonSerializable()
class SearchException implements Exception {
  @JsonKey(name: 'message')
  final String errorMessage;

  SearchException({@required this.errorMessage});
  String getErrorMessage() {
    return errorMessage;
  }

  factory SearchException.fromJson(dynamic data) =>
      _$SearchExceptionFromJson(data);
}
