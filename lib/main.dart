import 'package:flutter/material.dart';
import 'package:github_repositories_app/domain/logic_models/repositoies_model.dart';
import 'package:github_repositories_app/domain/logic_models/search_data_model.dart';
import 'package:github_repositories_app/presentation/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SearchDataModel>(create: (_) => SearchDataModel()),
        Provider<RepositoriesModel>(create: (_) => RepositoriesModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
