import 'package:github_repositories_app/data/api/request_parameters/request_body.dart';
import 'package:github_repositories_app/domain/models/search_model.dart';

abstract class Service {
  Future<RepositoriesModel> getRepositories(RequestBody requestBody);
}
