import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants.dart';
import 'category.dart';
import 'genre.dart';
import 'movie_carousel.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          GenereComponent(),
          SizedBox(height: appDefaultPadding),
          MovieCarousel()
        ],
      ),
    );
  }
}
