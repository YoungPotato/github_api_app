import 'package:dio/dio.dart';
import 'package:github_repositories_app/data/api/request_parameters/request_body.dart';

import '../models/api_repository.dart';

class GitHubService {
  static const _BASE_URl = "https://api.github.com/search";

  final Dio _dio = Dio(BaseOptions(baseUrl: _BASE_URl));

  Future<Iterable<ApiRepository>> getRepositories(
      RequestBody requestBody) async {
    final response =
        await _dio.get("/repositories", queryParameters: requestBody.toApi());
    final Iterable repositories = response.data["items"];
    return repositories.map((e) => ApiRepository.fromApi(e));
  }
}
