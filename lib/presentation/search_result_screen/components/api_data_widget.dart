import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/color_constants.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/domain/logic_models/search_data_model.dart';
import 'package:github_repositories_app/domain/models/repository.dart';
import 'package:github_repositories_app/presentation/search_result_screen/components/result_card.dart';
import 'package:provider/provider.dart';

class ApiDataWidget extends StatelessWidget {
  final List<Repository> repositories;
  const ApiDataWidget({Key key, this.repositories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchDataModel = context.read<SearchDataModel>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringConstants.REQUEST_TEXT.toUpperCase(),
                style: TextStyle(color: ColorConstants.GREY, fontSize: 10),
              ),
              Text("\"${searchDataModel.searchData}\"".toUpperCase(),
                  style: TextStyle(color: ColorConstants.BLUE, fontSize: 10))
            ],
          ),
        ),
        Text("${StringConstants.FIND_TEXT}${repositories.length}".toUpperCase(),
            style: TextStyle(color: ColorConstants.GREY, fontSize: 10)),
        Expanded(
          child: Container(
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: ListView.builder(
                  itemCount: repositories.length,
                  itemBuilder: (context, index) => SearchResultCard(
                        repository: repositories[index],
                      ))),
        ),
      ],
    );
  }
}
