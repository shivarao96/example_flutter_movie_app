import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'movie_card.dart';

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
    _pageController =
        PageController(viewportFraction: 0.8, initialPage: intialPage);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: appDefaultPadding),
      child: AspectRatio(
          aspectRatio: 0.95,
          child: PageView.builder(
              onPageChanged: (value) => {intialPage = value},
              controller: _pageController,
              physics: ClampingScrollPhysics(),
              itemCount: movies.length,
              itemBuilder: (context, index) => buildMovieSlider(index))),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        return AnimatedOpacity(
            opacity: index == intialPage ? 1 : 0.4,
            duration: Duration(microseconds: 100),
            child: MovieCard(
              movie: movies[index],
            ));
      });
}
