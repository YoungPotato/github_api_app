// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchException _$SearchExceptionFromJson(Map<String, dynamic> json) {
  return SearchException(
    errorMessage: json['message'] as String,
  );
}

Map<String, dynamic> _$SearchExceptionToJson(SearchException instance) =>
    <String, dynamic>{
      'message': instance.errorMessage,
    };
