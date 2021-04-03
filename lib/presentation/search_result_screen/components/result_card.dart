import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/color_constants.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/domain/models/repository.dart';

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
          border: Border.all(color: ColorConstants.LIGHT_GREY)),
      child: Stack(
        children: [
          getRepositoryStarsComponent(),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${repository.repositoryName}",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
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
                                image: NetworkImage(repository.avatar),
                                fit: BoxFit.contain),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text(
                          "${repository.username}",
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: ColorConstants.LIGHT_GREY,
                  height: 1,
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Text(
                        StringConstants.UPDATE_TEXT,
                        style: TextStyle(color: Colors.grey[400], fontSize: 10),
                      ),
                      Text("${repository.lastUpdate}",
                          style: TextStyle(color: Colors.black, fontSize: 10))
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

  Positioned getRepositoryStarsComponent() {
    return Positioned(
        right: 16,
        top: 12,
        child: Container(
          width: 45,
          height: 24,
          decoration: BoxDecoration(
              color: ColorConstants.GREY,
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
                "${repository.countStars}",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ));
  }
}
