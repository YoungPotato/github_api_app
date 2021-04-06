part of 'githubsearch_bloc.dart';

@immutable
abstract class GithubSearchEvent {
  const GithubSearchEvent();
}

class SearchButtonPressed extends GithubSearchEvent {
  const SearchButtonPressed();
}
