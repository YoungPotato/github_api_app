part of 'githubsearch_bloc.dart';

@immutable
abstract class GithubSearchState {
  const GithubSearchState();
}

class SearchStateEmpty extends GithubSearchState {}

class SearchStateLoading extends GithubSearchState {}

class SearchStateSuccess extends GithubSearchState {
  final RepositoriesModel result;
  final String searchData;
  const SearchStateSuccess(this.result, this.searchData);
}

class SearchStateError extends GithubSearchState {
  final String error;

  const SearchStateError(this.error);
}
