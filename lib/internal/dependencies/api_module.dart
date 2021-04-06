import 'package:github_repositories_app/data/api/api_util.dart';
import 'package:github_repositories_app/data/api/services/github_service.dart';

class ApiModule {
  static ApiUtil _apiUtil;

  static ApiUtil apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(GitHubService());
    }
    return _apiUtil;
  }
}
