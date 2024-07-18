import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:flutter/material.dart';

class DishView extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  const DishView({
    super.key,
    required this.image,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 250,
              width: double.infinity,
              child: CachedNetworkImage(
                fit: BoxFit.fitWidth,
                imageUrl: this.image,
                placeholder: (context, url) =>
                    Image.asset(fit: BoxFit.fitWidth, ImagePass.sushi),
                errorWidget: (context, url, error) =>
                    Image.asset(fit: BoxFit.fitWidth, ImagePass.sushi),
              )),
          Container(
            margin: EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 10),
            child: Text(this.title, style: theme.headlineLarge),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Text(this.text, style: theme.labelMedium),
          ),
        ]);
  }
}
