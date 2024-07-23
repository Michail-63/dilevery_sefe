import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/dish_model.dart';
import 'package:delivery/data/models/menu.dart';
import 'package:delivery/pages/menu/widget/menu_category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.item,
    required this.category,
  });

  final Menu item;
  final List<DishModel> category;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MenuCategoryPage(
                        title: item.title,
                        category: category,
                      )));

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => item.dst),
          //

          // );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(12),
                child: SvgPicture.asset(
                  width: 32,
                  height: 32,
                  item.icon,
                ),
              ),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: theme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
