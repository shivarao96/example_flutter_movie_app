import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'category.dart';
import 'genre.dart';
import 'movie_card.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[CategoryList(), GenereComponent(), MovieCarousel()],
      ),
    );
  }
}

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  int intialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appDefaultPadding),
      child: AspectRatio(
          aspectRatio: 0.95,
          child: PageView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) => MovieCard(
                    movie: movies[index],
                  ))),
    );
  }
}
