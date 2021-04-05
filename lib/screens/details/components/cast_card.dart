import 'package:flutter/material.dart';

import '../../../constants.dart';

class CastCard extends StatelessWidget {
  const CastCard({
    Key key,
    @required this.cast,
  }) : super(key: key);

  final Map cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: appDefaultPadding),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(cast['image'])))),
          SizedBox(
            height: appDefaultPadding / 2,
          ),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          SizedBox(
            height: appDefaultPadding / 4,
          ),
          Text(cast['movieName'],
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(color: appTextLightColor))
        ],
      ),
    );
  }
}
