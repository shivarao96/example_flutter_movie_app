import 'package:flutter/material.dart';
import 'category.dart';
import 'genre.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[CategoryList(), GenereComponent()],
    );
  }
}
