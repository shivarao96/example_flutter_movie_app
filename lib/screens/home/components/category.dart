import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = [
    'In Theater',
    'Box Office',
    'Coming Soon',
    'Oscars',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: appDefaultPadding / 2, vertical: appDefaultPadding / 2),
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index, context)),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildCategoryText(index, context),
            buildCategoryContainer(index)
          ],
        ),
      ),
    );
  }

  Text buildCategoryText(int index, BuildContext context) {
    return Text(
      categories[index],
      style: Theme.of(context).textTheme.headline5.copyWith(
          fontWeight: FontWeight.w600,
          color: index == selectedCategory
              ? appTextColor
              : Colors.black.withOpacity(0.4)),
    );
  }

  Container buildCategoryContainer(int index) {
    return Container(
      width: 40,
      height: 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: index == selectedCategory
              ? appSecondaryColor
              : Colors.transparent),
      margin: EdgeInsets.symmetric(vertical: appDefaultPadding / 2),
    );
  }
}
