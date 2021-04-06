import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repositories_app/domain/bloc/github_search/githubsearch_bloc.dart';

import 'api_data_widget.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: BlocBuilder<GithubSearchBloc, GithubSearchState>(
            bloc: BlocProvider.of<GithubSearchBloc>(context),
            builder: (context, state) {
              if (state is SearchStateEmpty) {
                return Center(child: Text("Пустой запрос"));
              }
              if (state is SearchStateLoading) {
                return Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (state is SearchStateSuccess) {
                return state.result.items.isEmpty
                    ? Center(child: Text('No Results'))
                    : ApiDataWidget(
                        repositories: state.result,
                        searchData: state.searchData,
                      );
              }
              if (state is SearchStateError) {
                return Center(child: Text(state.error));
              }
            }));
  }
}
