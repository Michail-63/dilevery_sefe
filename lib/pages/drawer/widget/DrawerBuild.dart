import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerBuild extends StatelessWidget {
  const DrawerBuild({
    super.key,
    required this.title,
    required this.icon,
    required this.onClick,
  });

  final String title;
  final String icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return ListTile(
      leading: SvgPicture.asset(
        icon,
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Text(
          title,
          style: theme.bodyMedium,
        ),
      ),
      onTap: () {
        onClick();
      },
    );
  }
}