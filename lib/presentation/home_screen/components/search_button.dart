import 'package:flutter/material.dart';
import 'package:github_repositories_app/constants/color_constants.dart';

class SearchButton extends StatelessWidget {
  final Function onButtonPressed;
  final String text;
  const SearchButton(
      {Key key, @required this.onButtonPressed, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: ColorConstants.BLUE),
      width: 100,
      margin: EdgeInsets.all(4),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.teal,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onPressed: () => onButtonPressed(),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
