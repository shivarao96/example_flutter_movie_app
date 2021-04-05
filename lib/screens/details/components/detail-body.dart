import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class DetailBody extends StatelessWidget {
  final Movie movie;

  const DetailBody({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.5,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.5 - 50,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                    image: DecorationImage(
                        image: AssetImage(movie.poster), fit: BoxFit.fill)),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: size.width * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 50,
                              color: Color(0xFF12153D).withOpacity(0.2))
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset("assets/icons/star_fill.svg"),
                            SizedBox(height: appDefaultPadding / 4),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "${movie.rating} /",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(text: "10\n"),
                                    TextSpan(
                                        text: "200,000",
                                        style:
                                            TextStyle(color: appTextLightColor))
                                  ]),
                            )
                          ],
                        ),
                        // rate this movie
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset("assets/icons/star.svg"),
                            SizedBox(
                              height: appDefaultPadding / 4,
                            ),
                            Text("Rate This",
                                style: Theme.of(context).textTheme.bodyText2)
                          ],
                        ),
                        // meta critic score
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFF51CF66)),
                              child: Text("${movie.metaScoreRating}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(
                              height: appDefaultPadding / 4,
                            ),
                            Text(
                              "Metascore",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "62 Critic Review",
                              style: TextStyle(color: appTextLightColor),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              SafeArea(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 50,
                          color: Color(0xFF12153D).withOpacity(0.2))
                    ]),
                child: BackButton(),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
