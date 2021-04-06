import 'package:dio/dio.dart';
import 'package:github_repositories_app/data/api/interfaces/service.dart';
import 'package:github_repositories_app/data/api/request_parameters/request_body.dart';
import 'package:github_repositories_app/domain/models/search_exception.dart';
import 'package:github_repositories_app/domain/models/search_model.dart';

class GitHubService extends Service {
  static const _BASE_URl = "https://api.github.com/search";

  final Dio _dio = Dio(BaseOptions(baseUrl: _BASE_URl));

  Future<RepositoriesModel> getRepositories(RequestBody requestBody) async {
    final response =
        await _dio.get("/repositories", queryParameters: requestBody.toApi());
    if (response.statusCode == 200) {
      return RepositoriesModel.fromJson(response.data);
    } else {
      var exception = SearchException.fromJson(response.data);
      throw exception;
    }
  }
}
