import 'package:flutter/material.dart';
import 'package:news/api_manager.dart';
import 'package:news/category_details/category_details.dart';
import 'package:news/category_details/category_fragments.dart';
import 'package:news/home/home_drawer.dart';
import 'package:news/home/model/SourceResponse.dart';
import 'package:news/home/model/category.dart';
import 'package:news/home/myTheme.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            color: MyTheme.whiteColor,
            child: Image.asset(
              'assets/images/pattern.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                'News App',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: MyTheme.whiteColor),
              ),
            ),
            drawer: Drawer(
              child: HomeDrawer(),
            ),
            body: selectedCategory == null
                ? CategoryFragment(
                    onCategoryClick: onCategoryClick,
                  )
                : CategoryDetails(category: selectedCategory!))
      ],
    );
  }

  Category? selectedCategory;

  void onCategoryClick(Category newSelectedCategory) {
    selectedCategory = newSelectedCategory;
  }
}
