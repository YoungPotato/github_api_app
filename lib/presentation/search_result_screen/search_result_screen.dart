import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/domain/logic_models/repositoies_model.dart';
import 'package:github_repositories_app/domain/logic_models/search_data_model.dart';
import 'package:github_repositories_app/domain/models/repository.dart';
import 'package:github_repositories_app/presentation/components/app_bar.dart';
import 'package:github_repositories_app/presentation/search_result_screen/components/api_data_widget.dart';
import 'package:provider/provider.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchDataModel = context.read<SearchDataModel>();
    final repositoriesModel = context.read<RepositoriesModel>();
    final repositories =
        repositoriesModel.getRepositories(searchDataModel.searchData);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(title: StringConstants.RESULT_SCREEN_TITLE),
        body: Container(
            width: double.infinity,
            child: FutureBuilder<List<Repository>>(
                future: repositories,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ApiDataWidget(repositories: snapshot.data);
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(StringConstants.ERROR_MESSAGE),
                    );
                  }
                  return Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(),
                    ),
                  );
                })));
  }
}
