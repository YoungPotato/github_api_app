import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'github_user_model.dart';

part 'repository_model.g.dart';

@JsonSerializable()
class Repository {
  final String name;
  @JsonKey(name: 'stargazers_count')
  final int starsCount;
  @JsonKey(name: 'updated_at')
  final DateTime lastUpdateDateFormat;
  final GitHubUser owner;

  Repository(
      {@required this.lastUpdateDateFormat,
      @required this.name,
      @required this.starsCount,
      @required this.owner});

  String get lastUpdate => _getStringFormatData(lastUpdateDateFormat);

  String _getMonth(int monthNumber) {
    const months = [
      'Января',
      'Февраля',
      'Марта',
      'Апреля',
      'Мая',
      'Июня',
      'Июля',
      'Августа',
      'Сентября',
      'Октября',
      'Ноября',
      'Декабря'
    ];
    return months[monthNumber - 1];
  }

  String _getStringFormatData(DateTime time) {
    return "${time.day} ${_getMonth(time.month)}";
  }

  factory Repository.fromJson(Map<String, dynamic> data) =>
      _$RepositoryFromJson(data);
}
