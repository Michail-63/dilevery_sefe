import 'package:delivery/data/models/review.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/rate_star__review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class NewReview extends StatelessWidget {
  final List<Review> reviews;

  const NewReview({
    super.key,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return reviews.isEmpty
        ? Text("no reviews")
        : Column(
            children: List.generate(reviews.length, (index) {
              return InkWell(
                onLongPress: (){
                  context.read<DishBloc>().add(DeleteReviewDishEvent(dishId: reviews[index].dishId));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white10),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("${reviews[index].name},  "),
                                Text(DateFormat('yyyy.yy.yy')
                                    .format(reviews[index].createdAt)),
                              ],
                            ),
                            RateStarReview(rating: reviews[index].rating)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(reviews[index].coment),
                      ],
                    ),
                  ),
                ),
              );

              Text(reviews[index].coment);
            }),
          );
  }
}
