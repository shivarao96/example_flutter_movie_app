import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';

import '../../../constants.dart';
import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: appDefaultPadding),
          SizedBox(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movie.actors.length,
                itemBuilder: (context, index) =>
                    CastCard(cast: movie.actors[index])),
          )
        ],
      ),
    );
  }
}
