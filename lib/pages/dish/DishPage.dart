import 'package:delivery/config/theme.dart';
import 'package:delivery/data/DishData.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/AddDishToCart.dart';
import 'package:delivery/pages/dish/widget/AddReviews.dart';
import 'package:delivery/pages/dish/widget/NewReview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DishPage extends StatelessWidget {
  Dish dishPage;

  DishPage({super.key, required this.dishPage});

  @override
  Widget build(BuildContext context) {
    final price = this.dishPage.price;
    final newprice = price ~/ 1.05;
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => DishBloc(),
      child: DishView(dishPage: dishPage, theme: theme, price: price, newprice: newprice),
    );
  }
}

class DishView extends StatelessWidget {
  const DishView({
    super.key,
    required this.dishPage,
    required this.theme,
    required this.price,
    required this.newprice,
  });

  final Dish dishPage;
  final TextTheme theme;
  final int price;
  final int newprice;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DishBloc, DishState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(this.dishPage.title),
          ),
          body: ListView(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 250,
                        width: double.infinity,
                        child: Image.asset(
                            fit: BoxFit.fitWidth, this.dishPage.image)),
                    Container(
                      margin: EdgeInsets.only(
                          top: 10, right: 20, bottom: 10, left: 10),
                      child: Text(this.dishPage.title,
                          style: theme.headlineLarge),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child:
                          Text(this.dishPage.text, style: theme.labelMedium),
                    ),
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Row(children: [
                            Container(
                              margin: EdgeInsets.only(right: 10, left: 10),
                              child: Text("$price \u20BD",
                                  style: theme.displayMedium),
                            ),
                          ]),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10, left: 15),
                        child: Text("$newprice \u20BD",
                            style: theme.displayLarge),
                      ),
                    ],
                  ),
                  AddDishToCart(count: state.count),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //  Кнопка добавить в корзину.
              Container(
                decoration: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(right: 10, left: 10),
                height: 65,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    print("e");
                  },
                  child: Text("Добавить в корзину", style: theme.bodyLarge),
                ),
              ),

              Expanded(child: AddReviews()),

              // ListView(child: NewReviews(review: state.reviews, star: state.star)),
            ],
          ),
        );
      },
    );
  }
}
