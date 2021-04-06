import 'package:flutter/material.dart';
import 'package:github_repositories_app/data/api/interfaces/service.dart';
import 'package:github_repositories_app/data/api/request_parameters/request_body.dart';
import 'package:github_repositories_app/domain/models/search_model.dart';

class ApiUtil {
  final Service _service;

  ApiUtil(this._service);

  Future<RepositoriesModel> getRepositories(
      {@required String searchData}) async {
    final requestBody = RequestBody(searchData: searchData);
    final result = await _service.getRepositories(requestBody);
    return result;
  }
}
