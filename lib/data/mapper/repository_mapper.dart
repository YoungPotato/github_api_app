import 'package:github_repositories_app/data/api/models/api_repository.dart';
import 'package:github_repositories_app/domain/models/repository.dart';

class RepositoryMapper {
  static Repository fromApi(ApiRepository repository) {
    return Repository(
        countStars: repository.starsCount.toInt(),
        repositoryName: repository.repositoryName,
        username: repository.username,
        lastUpdate: DateTime.parse(repository.lastUpdate),
        avatar: repository.avatar);
  }
}
