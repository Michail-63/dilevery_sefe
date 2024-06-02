import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewReviews extends StatelessWidget {
  const NewReviews({
    required this.review,
    required this.star,
  });

  final String review;
  final int star;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return
      Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$review",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
              Row(
                children: [
                  for (var i = 1; i< 6; i++)
                     SvgPicture.asset(
                        color: star < i ? Colors.black26 : color2,
                        IconPath.star2,
                        height: 15,
                        width: 15,
                      ),
                ],
              ),
            ],
          ),
          // Text("$review", style: theme.labelSmall),
        ],
      ),
    );
  }
}
