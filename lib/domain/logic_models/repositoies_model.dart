import 'package:github_repositories_app/data/api/api_util.dart';
import 'package:github_repositories_app/data/api/services/github_service.dart';
import 'package:github_repositories_app/domain/models/repository.dart';

class RepositoriesModel {
  final _apiUtils = ApiUtil(GitHubService());

  Future<List<Repository>> getRepositories(String searchData) async {
    var repos = await _apiUtils.getRepositories(searchData: searchData);
    var reposList = repos.toList();
    return reposList;
  }
}
