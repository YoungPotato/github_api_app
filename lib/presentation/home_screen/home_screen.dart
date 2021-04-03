import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/color_constants.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/domain/logic_models/search_data_model.dart';
import 'package:github_repositories_app/presentation/home_screen/components/search_button.dart';
import 'package:github_repositories_app/presentation/search_result_screen/search_result_screen.dart';
import 'package:provider/provider.dart';

import '../components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searcDataModel = context.read<SearchDataModel>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: StringConstants.HOME_SCREEN_TITLE),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 84),
          decoration: BoxDecoration(
              border: Border.all(color: ColorConstants.LIGHT_GREY),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      onChanged: (input) => {searcDataModel.searchData = input},
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    )),
              ),
              SearchButton(
                onButtonPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SearchResultScreen())),
                text: StringConstants.SEARCH_BUTTON_TEXT,
              )
            ],
          ),
        ),
      ),
    );
  }
}
