import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/genre_card.dart';
import 'package:flutter_movie_app/constants.dart';

class GenereComponent extends StatefulWidget {
  @override
  _GenereComponentState createState() => _GenereComponentState();
}

class _GenereComponentState extends State<GenereComponent> {
  List<String> genres = [
    'Action',
    'Crime',
    'Comedy',
    'Drama',
    'Horror',
    'Animation'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: appDefaultPadding, left: appDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GenreCard(genre: genres[index])),
    );
  }
}
