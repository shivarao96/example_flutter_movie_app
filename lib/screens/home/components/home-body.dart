import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[CategoryList()],
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ['In Theater', 'Box Office', 'Coming Soon'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              buildText(categories[index], context)),
    );
  }

  Padding buildText(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
