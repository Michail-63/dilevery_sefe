import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewStatistics extends StatelessWidget {
  const ReviewStatistics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Отзывы",
            style: theme.bodyMedium,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15.0, right: 10),
          child: SvgPicture.asset(
            IconPath.star2,
            height: 18,
            width: 18,
            color: color2,
          ),
        ),
        Text(
          "4.8/5",
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}
