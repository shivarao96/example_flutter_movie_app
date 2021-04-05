import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_movie_app/screens/details/components/detail-body.dart';

class DetailsCard extends StatelessWidget {
  final Movie movie;

  const DetailsCard({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBody(movie: movie),
    );
  }
}
