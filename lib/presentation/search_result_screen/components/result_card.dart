import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/domain/models/repository_model.dart';

class SearchResultCard extends StatelessWidget {
  final Repository repository;
  const SearchResultCard({Key key, @required this.repository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Theme.of(context).primaryColorLight)),
      child: Stack(
        children: [
          getRepositoryStarsComponent(context),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${repository.name}",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Container(
                  margin: EdgeInsets.only(top: 4, bottom: 8),
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(repository.owner.avatarUrl),
                                fit: BoxFit.contain),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text(
                          "${repository.owner.login}",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).primaryColorLight,
                  height: 1,
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Text(
                        StringConstants.UPDATE_TEXT,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Text("${repository.lastUpdate}",
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Positioned getRepositoryStarsComponent(BuildContext context) {
    return Positioned(
        right: 16,
        top: 12,
        child: Container(
          width: 45,
          height: 24,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 2),
                child: Icon(
                  Icons.star_border,
                  size: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                "${repository.starsCount}",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        ));
  }
}
