import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RateStar extends StatelessWidget {
  final int star;
  final void Function(int) onClick;

  RateStar({super.key, required this.star, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 1; i < 6; i++)
          IconButton(
            onPressed: () {
              onClick(i);
              print("star = ${i}");
            },
            icon: SvgPicture.asset(
              color: star < i ? Colors.black26 : color2,
              IconPath.star2,
              height: 30,
              width: 30,
            ),
          ),
      ],
    );
  }
}
