import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/menu_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.item,
  });


  final Menu item;

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
            MaterialPageRoute(builder: (context) => item.dst),
          );
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
