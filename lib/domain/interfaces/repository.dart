import 'package:github_repositories_app/domain/models/search_model.dart';

abstract class Repository {
  Future<RepositoriesModel> search(String searchData);
}
