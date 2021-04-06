import 'package:github_repositories_app/data/repository/github_repository.dart';
import 'package:github_repositories_app/internal/dependencies/api_module.dart';

class RepositoryModule {
  static GitHubRepository _gitHubRepository;

  static GitHubRepository getGitHubRepository() {
    if (_gitHubRepository == null) {
      _gitHubRepository = GitHubRepository(ApiModule.apiUtil());
    }
    return _gitHubRepository;
  }
}
