import 'package:flutter/material.dart';

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
          color: Theme.of(context).accentColor),
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
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
