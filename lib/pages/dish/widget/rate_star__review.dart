import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RateStarReview extends StatelessWidget {
  final int rating;

  const RateStarReview({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 1; i < 6; i++)
          Container(
            padding: EdgeInsets.all(2),
            child: SvgPicture.asset(
              color: rating < i ? Colors.black26 : color2,
              IconPath.star2,
              height: 15,
              width: 15,
            ),
          ),
        
      ],
    );
  }
}
