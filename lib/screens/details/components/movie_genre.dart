import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/genre_card.dart';
import 'package:flutter_movie_app/models/movies.dart';

import '../../../constants.dart';

class MovieGenre extends StatelessWidget {
  const MovieGenre({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: appDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie.genre.length,
            itemBuilder: (context, index) => GenreCard(
                  genre: movie.genre[index],
                )),
      ),
    );
  }
}
