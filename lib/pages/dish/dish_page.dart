import 'package:delivery/data/repositories/root_repository.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/dish_count.dart';
import 'package:delivery/pages/dish/widget/batton_add_reviews.dart';
import 'package:delivery/pages/dish/widget/batton_add_ to_cart.dart';
import 'package:delivery/pages/dish/widget/dish_price.dart';
import 'package:delivery/pages/dish/widget/dish_view.dart';
import 'package:delivery/pages/dish/widget/review_statistics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget/new_review.dart';

class DishPage extends StatelessWidget {
  String dishId;


  DishPage({super.key, required this.dishId,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            DishBloc(RootRepository())..add(DishFetchEvent(dish: dishId)),
        child: BlocBuilder<DishBloc, DishState>(
          builder: (context, state) {
            return
            //   isloading
            //     ? Container(
            //   width: double.infinity,
            //   child: Expanded(
            //     child: Center(
            //       child: CircularProgressIndicator(),
            //     ),
            //   ),
            // )
            //     :


              Scaffold(
              appBar: AppBar(
                title: Text(
                  state.dish.title,
                ),
              ),
              body: ListView(
                children: [
                  DishView(
                    title: state.dish.title,
                    image: state.dish.image,
                    text: state.dish.text,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DishPrice(
                        price: state.dish.price,
                      ),
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
                  NewReview(),

                  // ListView(child: NewReviews(review: state.reviews, star: state.star)),
                ],
              ),
            );
          },
        ));
  }
}
