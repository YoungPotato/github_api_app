import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/string_constants.dart';
import 'package:github_repositories_app/presentation/home_screen/components/body.dart';

import '../components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(title: StringConstants.HOME_SCREEN_TITLE),
      body: Body(),
    );
  }
}
