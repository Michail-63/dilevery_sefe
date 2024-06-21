import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/review_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BattonAddReviews extends StatelessWidget {
  final String dishId;

  const BattonAddReviews({super.key, required this.dishId});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      width: 160,
      child: TextButton(
        onPressed: () {
          _showReviewModal(context, (rating, coment) {
            context
                .read<DishBloc>()
                .add(AddReviewDishEvent(rating: rating, coment: coment,dishId:dishId ));
          });
        },
        child: Text("Добавить отзыв", style: theme.bodySmall),
      ),
    );
  }
}

Future<void> _showReviewModal(
    BuildContext context, Function(int rating, String coment) onSend) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: ReviewModal(
            onSendReview: (i, s) {
              onSend(i, s);
              Navigator.of(context).pop();
            },
          ),
        );
      });
}
