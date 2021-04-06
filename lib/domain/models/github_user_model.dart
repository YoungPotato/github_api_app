import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'github_user_model.g.dart';

@JsonSerializable()
class GitHubUser {
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  final String login;

  const GitHubUser({@required this.login, @required this.avatarUrl});

  factory GitHubUser.fromJson(Map<String, dynamic> data) =>
      _$GitHubUserFromJson(data);
}
