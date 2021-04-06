import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/presentation/components/app_bar.dart';
import 'package:github_repositories_app/presentation/search_result_screen/components/body.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: CustomAppBar(title: StringConstants.RESULT_SCREEN_TITLE),
        body: Body());
  }
}
