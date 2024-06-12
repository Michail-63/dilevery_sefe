
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/batton_add_%20to_cart.dart';
import 'package:delivery/pages/dish/widget/batton_add_reviews.dart';
import 'package:delivery/pages/dish/widget/dish_count.dart';
import 'package:delivery/pages/dish/widget/dish_price.dart';
import 'package:delivery/pages/dish/widget/dish_view.dart';
import 'package:delivery/pages/dish/widget/review_statistics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyDishPage extends StatelessWidget {
  const BodyDishPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DishBloc, DishState>(
      builder: (context, state) {
        return state.isloading
            ? Container(
          width: double.infinity,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        )
            : Scaffold(
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
              // NewReview(),

              // ListView(child: NewReviews(review: state.reviews, star: state.star)),
            ],
          ),
        );
      },
    );
  }
}
