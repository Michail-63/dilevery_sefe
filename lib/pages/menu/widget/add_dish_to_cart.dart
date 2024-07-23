
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/category/bloc/category_bloc.dart';
import 'package:delivery/pages/menu/bloc/menu_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddDishToCart extends StatelessWidget {
  const AddDishToCart({
    super.key,
    required this.dishId,
  });

  final String dishId;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          context
              .read<MenuBloc>()
              .add(AddToCartMenuEvent(dishId));
        },
        child: Container(
          padding: const EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color2,
          ),
          child: SvgPicture.asset(
            IconPath.shape,
            height: 20,
            width: 20,
            color: Colors.white,
          ),
        ));
  }
}

