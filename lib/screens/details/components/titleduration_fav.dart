import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies.dart';

import '../../../constants.dart';

class TitleDurationAndFavBtn extends StatelessWidget {
  const TitleDurationAndFavBtn({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                movie.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: appDefaultPadding / 2,
              ),
              Row(
                children: <Widget>[
                  Text("${movie.realeasedYear}",
                      style: TextStyle(color: appTextLightColor)),
                  SizedBox(
                    width: appDefaultPadding,
                  ),
                  Text(
                    "PG-13",
                    style: TextStyle(color: appTextLightColor),
                  ),
                  SizedBox(
                    width: appDefaultPadding,
                  ),
                  Text(
                    "2h 32min",
                    style: TextStyle(color: appTextLightColor),
                  ),
                ],
              )
            ],
          )),
          SizedBox(
            height: 64,
            width: 64,
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(appSecondaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)))),
                child: Icon(
                  Icons.add,
                  size: 28,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
