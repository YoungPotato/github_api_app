import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/domain/models/search_model.dart';
import 'package:github_repositories_app/presentation/search_result_screen/components/result_card.dart';

class ApiDataWidget extends StatelessWidget {
  final RepositoriesModel repositories;
  final String searchData;
  const ApiDataWidget({Key key, this.repositories, this.searchData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text("\"$searchData\"".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Theme.of(context).accentColor))
            ],
          ),
        ),
        Text(
            "${StringConstants.FIND_TEXT}${repositories.totalCount}"
                .toUpperCase(),
            style: Theme.of(context).textTheme.bodyText2),
        Expanded(
          child: Container(
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: ListView.builder(
                  itemCount: repositories.items.length,
                  itemBuilder: (context, index) => SearchResultCard(
                        repository: repositories.items[index],
                      ))),
        ),
      ],
    );
  }
}
