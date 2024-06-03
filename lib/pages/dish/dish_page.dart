import 'package:delivery/data/models/dish_data.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/dish_count.dart';
import 'package:delivery/pages/dish/widget/batton_add_reviews.dart';
import 'package:delivery/pages/dish/widget/batton_add_ to_cart.dart';
import 'package:delivery/pages/dish/widget/dish_price.dart';
import 'package:delivery/pages/dish/widget/dish_view.dart';
import 'package:delivery/pages/dish/widget/review_statistics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DishPage extends StatelessWidget {
  Dish dishPage;

  DishPage({super.key, required this.dishPage});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => DishBloc(),
        child: BlocBuilder<DishBloc, DishState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(this.dishPage.title),
              ),
              body: ListView(
                children: [
                  DishView(dishPage: dishPage),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DishPrice(dishPage: dishPage),
                      DishCount(count: state.count),
                    ],
                  ),
                  SizedBox(height: 15),
                  BattonAddToCart(),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ReviewStatistics(),
                      BattonAddReviews(),
                    ],
                  ),

                  // ListView(child: NewReviews(review: state.reviews, star: state.star)),
                ],
              ),
            );
          },
        ));
  }
}
