import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/domain/interfaces/repository.dart';
import 'package:github_repositories_app/domain/models/search_model.dart';
import 'package:github_repositories_app/domain/models/search_exception.dart';
import 'package:meta/meta.dart';

import '../data_input/datainput_bloc.dart';

part 'githubsearch_event.dart';
part 'githubsearch_state.dart';

class GithubSearchBloc extends Bloc<GithubSearchEvent, GithubSearchState> {
  final Repository _repository;
  final DatainputBloc _datainputBloc;
  String searchData;
  StreamSubscription dataInputBlocSubscription;

  GithubSearchBloc(this._repository, this._datainputBloc)
      : super(SearchStateEmpty()) {
    dataInputBlocSubscription = _datainputBloc.stream.listen((state) {
      if (state is CompleteInputState) {
        searchData = state.text;
      }
    });
  }

  @override
  Stream<GithubSearchState> mapEventToState(
    GithubSearchEvent event,
  ) async* {
    if (event is SearchButtonPressed) {
      if (searchData.isEmpty) {
        yield SearchStateEmpty();
      } else {
        yield SearchStateLoading();
        try {
          final result = await _repository.search(searchData);
          yield SearchStateSuccess(result, searchData);
        } catch (error) {
          yield error is SearchException
              ? SearchStateError(error.errorMessage)
              : SearchStateError(StringConstants.ERROR_MESSAGE);
        }
      }
    }
  }

  @override
  Future<void> close() {
    dataInputBlocSubscription.cancel();
    return super.close();
  }
}
