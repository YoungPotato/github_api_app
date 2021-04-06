import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/color_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key key, @required this.title}) : super(key: key);
  final height = 51.0;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 50,
              child: Center(
                child: Text(
                  title.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
            Divider(
              color: ColorConstants.LIGHT_GREY,
              height: 1,
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
