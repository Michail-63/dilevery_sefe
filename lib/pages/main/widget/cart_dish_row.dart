import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/dish_model.dart';

import 'package:delivery/pages/dish/dish_page.dart';
import 'package:delivery/pages/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartDishRow extends StatelessWidget {
  final DishModel item;

  const CartDishRow({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Card(
      margin: EdgeInsetsDirectional.only(start: 6, end: 6),
      clipBehavior: Clip.hardEdge,
      color: color1,
      child: Container(
        width: 190,
        height: 320,
        child: Stack(children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DishPage(dishId: item.id)));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  width: 190,
                  height: 190,
                  fit: BoxFit.fitWidth,
                  imageUrl: item.image,
                  placeholder: (context, url) => Image.asset(
                      width: 190,
                      height: 190,
                      fit: BoxFit.fitWidth,
                      ImagePass.sushi),
                  errorWidget: (context, url, error) => Image.asset(
                      width: 190,
                      height: 190,
                      fit: BoxFit.fitWidth,
                      ImagePass.sushi),
                ),
                //
                // FadeInImage.assetNetwork(
                // width: 190,
                //     height: 190,
                //     fit: BoxFit.fitWidth,
                //     placeholder: ImagePass.sushi,
                //     image: item.image),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        "${item.price} \u20BD ",
                        style: theme.titleMedium,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(item.name, style: theme.bodyMedium),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 110,
            child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  context.read<MainBloc>().add(AddToCartMainEvent(item.id));
                },
                child: Container(
                  padding: EdgeInsetsDirectional.all(10),
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
                )),
          ),
        ]),
      ),
    );
  }
}
