import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/domain/bloc/data_input/datainput_bloc.dart';
import 'package:github_repositories_app/domain/bloc/github_search/githubsearch_bloc.dart';
import 'package:github_repositories_app/presentation/home_screen/components/search_button.dart';
import 'package:github_repositories_app/presentation/search_result_screen/search_result_screen.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _gitHubSearchBloc = BlocProvider.of<GithubSearchBloc>(context);
    final _dataInputBloc = BlocProvider.of<DatainputBloc>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 84),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColorLight),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  onChanged: (input) =>
                      {_dataInputBloc.add(TextChanged(input))},
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                )),
          ),
          SearchButton(
            onButtonPressed: () =>
                onSearchButtonPressed(_gitHubSearchBloc, context),
            text: StringConstants.SEARCH_BUTTON_TEXT,
          )
        ],
      ),
    );
  }

  void onSearchButtonPressed(GithubSearchBloc bloc, BuildContext context) {
    bloc.add(SearchButtonPressed());
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchResultScreen()));
  }
}
