// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoriesModel _$RepositoriesModelFromJson(Map<String, dynamic> json) {
  return RepositoriesModel(
    totalCount: json['total_count'] as int,
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : Repository.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RepositoriesModelToJson(RepositoriesModel instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items,
    };
