import 'package:flutter/material.dart';

class Repository {
  final int countStars;
  final String repositoryName;
  final String username;
  final String lastUpdate;
  final String avatar;

  Repository(
      {@required this.avatar,
      @required this.countStars,
      @required this.repositoryName,
      @required this.username,
      @required DateTime lastUpdate})
      : this.lastUpdate = "${lastUpdate.day} ${_getMonth(lastUpdate.month)}";

  static String _getMonth(int monthNumber) {
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
}
