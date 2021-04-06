import 'package:github_repositories_app/data/api/api_util.dart';
import 'package:github_repositories_app/domain/interfaces/repository.dart';
import 'package:github_repositories_app/domain/models/search_model.dart';

class GitHubRepository extends Repository {
  final ApiUtil _apiUtil;

  GitHubRepository(this._apiUtil);

  Future<RepositoriesModel> search(String searchData) async {
    return await _apiUtil.getRepositories(searchData: searchData);
  }
}
