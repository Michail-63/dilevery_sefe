import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/CategoryData.dart';
import 'package:delivery/pages/category/CategoryPage.dart';
import 'package:delivery/pages/main/widget/SingleCategoryDishes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryWidget extends StatelessWidget {
  final List<Category> categories;

  final bool isloading;

  CategoryWidget({
    super.key,
    required this.categories,
    required this.isloading,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return isloading
        ? Container(
            width: double.infinity,
            child: Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          )
        : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 200,
              child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/wallpaper.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset(IconPath.logo)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  // var dishes=;
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(categories[index].title),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryPage(
                                          category: categories[index].title)));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text('См.все', style: theme.titleSmall),
                            ),
                          )
                        ],
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            for (var item in categories[index].dishes)
                              SingleCategoryDishes(dish: item)
                          ]))
                    ],
                  );
                },
              ),
            ),
          ]);
  }
}
