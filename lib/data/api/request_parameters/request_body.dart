import 'package:flutter/material.dart';

class RequestBody {
  final String searchData;

  RequestBody({@required this.searchData});

  Map<String, dynamic> toApi() {
    return {"q": searchData};
  }
}
