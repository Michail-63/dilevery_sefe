import 'dart:ui';
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyCartScreen extends StatelessWidget {
  const BodyCartScreen ({super.key, required this.count});
  final int count ;

@override
  Widget build(BuildContext context) {
  final  theme = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              margin: const EdgeInsets.only(top: 15, left: 15, right: 20),
              clipBehavior: Clip.hardEdge,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: color2, borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                ImagePass.sushi,
                fit: BoxFit.fitWidth,
              )),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                margin: const EdgeInsets.only(top: 5, right: 20, bottom: 35),
                child: Text(
                  "Сет Королевский",
                  style: theme.bodyMedium,
                )),
            // SizedBox(
            //   height: 33,
            // ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    if (count >=1) context.read<CartBloc>().add(DecrementCartEvent());
                    },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)),
                        border: Border.all(
                          color: Colors.white30,
                        )),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: color2,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.white30,
                  )),
                  child: Center(
                    child: Text(
                      "$count",
                      style: theme.titleMedium,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<CartBloc>().add(IncrementCartEvent());
                    },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                        border: Border.all(
                          color: Colors.white30,
                        )),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: color2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
          Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Text("1500  \u20BD",
                  style: theme.titleMedium
                  ),
            ],
          ),
        ]),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
