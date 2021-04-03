import 'package:flutter/material.dart';
import 'package:github_repositories_app/data/api/request_parameters/request_body.dart';
import 'package:github_repositories_app/data/api/services/github_service.dart';
import 'package:github_repositories_app/data/mapper/repository_mapper.dart';
import 'package:github_repositories_app/domain/models/repository.dart';

class ApiUtil {
  final GitHubService _gitHubService;

  ApiUtil(this._gitHubService);

  Future<Iterable<Repository>> getRepositories(
      {@required String searchData}) async {
    final requestBody = RequestBody(searchData: searchData);
    final result = await _gitHubService.getRepositories(requestBody);
    return result.map((e) => RepositoryMapper.fromApi(e));
  }
}
