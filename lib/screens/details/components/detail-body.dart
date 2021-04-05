import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/screens/details/components/titleduration_fav.dart';
import 'backdrop_rating.dart';
import 'cast_crew.dart';
import 'movie_genre.dart';

class DetailBody extends StatelessWidget {
  final Movie movie;

  const DetailBody({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BackDropAndRating(size: size, movie: movie),
            SizedBox(height: appDefaultPadding / 2),
            TitleDurationAndFavBtn(movie: movie),
            MovieGenre(movie: movie),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: appDefaultPadding / 2,
                  horizontal: appDefaultPadding),
              child: Text(
                "Plot Summary",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: appDefaultPadding),
              child: Text(
                movie.plot,
                style: TextStyle(color: Color(0xFF737599)),
              ),
            ),
            CastAndCrew(movie: movie)
          ]),
    );
  }
}
