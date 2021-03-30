import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants.dart';

class GenreCard extends StatelessWidget {
  final String genre;

  const GenreCard({Key key, this.genre}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: appDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: appDefaultPadding, vertical: appDefaultPadding / 4),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(20)),
      child: Text(genre),
    );
  }
}
