// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository(
    lastUpdateDateFormat: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    name: json['name'] as String,
    starsCount: json['stargazers_count'] as int,
    owner: json['owner'] == null
        ? null
        : GitHubUser.fromJson(json['owner'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stargazers_count': instance.starsCount,
      'updated_at': instance.lastUpdateDateFormat?.toIso8601String(),
      'owner': instance.owner,
    };
