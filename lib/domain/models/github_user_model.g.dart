// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubUser _$GitHubUserFromJson(Map<String, dynamic> json) {
  return GitHubUser(
    login: json['login'] as String,
    avatarUrl: json['avatar_url'] as String,
  );
}

Map<String, dynamic> _$GitHubUserToJson(GitHubUser instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'login': instance.login,
    };
