import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/review_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BattonAddReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(right: 10, left: 10),
      height: 50,
      width: 160,
      child: TextButton(
        onPressed: () {
          _showReviewModal(context, (i, s) {
            context
                .read<DishBloc>()
                .add(NewReviewDishEvent(review: s, star: i));
          });
        },
        child: Text("Добавить отзыв", style: theme.bodySmall),
      ),
    );
  }
}

Future<void> _showReviewModal(
    BuildContext context, Function(int, String) onSend) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: ReviewModal(
            onSend: (i, s) {
              onSend(i, s);
              // context
              // .read<DishBloc>()
              // .add(NewReviewDishEvent(review: s, star: i));
              Navigator.of(context).pop();
            },
          ),
        );
      });
}
