import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repositories_app/constants/color_constants.dart';
import 'package:github_repositories_app/domain/bloc/data_input/datainput_bloc.dart';
import 'package:github_repositories_app/domain/bloc/github_search/githubsearch_bloc.dart';
import 'package:github_repositories_app/presentation/home_screen/home_screen.dart';

import 'dependencies/repository_model.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DatainputBloc>(create: (context) => DatainputBloc()),
        BlocProvider<GithubSearchBloc>(
            create: (context) => GithubSearchBloc(
                RepositoryModule.getGitHubRepository(),
                BlocProvider.of<DatainputBloc>(context)))
      ],
      child: MaterialApp(
        theme: ThemeData(
            accentColor: ColorConstants.BLUE,
            primaryColor: ColorConstants.GREY,
            primaryColorLight: ColorConstants.LIGHT_GREY,
            backgroundColor: Colors.white,
            textTheme: TextTheme(
              headline6: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              subtitle1: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
              bodyText1: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
              bodyText2: TextStyle(
                  color: ColorConstants.GREY,
                  fontSize: 10,
                  fontWeight: FontWeight.w600),
            )),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
