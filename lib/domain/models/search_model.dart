import 'package:flutter/material.dart';
import 'package:github_repositories_app/domain/models/repository_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class RepositoriesModel {
  @JsonKey(name: 'total_count')
  final int totalCount;
  final List<Repository> items;

  const RepositoriesModel({@required this.totalCount, @required this.items});

  factory RepositoriesModel.fromJson(Map<String, dynamic> data) =>
      _$RepositoriesModelFromJson(data);
}
