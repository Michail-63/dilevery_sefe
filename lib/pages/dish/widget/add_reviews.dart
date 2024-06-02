import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/dish/bloc/dish_bloc.dart';
import 'package:delivery/pages/dish/widget/rate_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Отзывы",
                      style: theme.bodyMedium,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0, right: 10),
                    child: SvgPicture.asset(
                      IconPath.star2,
                      height: 18,
                      width: 18,
                      color: color2,
                    ),
                  ),
                  Text(
                    "4.8/5",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
              Container(
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
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
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

class ReviewModal extends StatefulWidget {
  final void Function(int, String) onSend;

  const ReviewModal({super.key, required this.onSend});

  @override
  State<ReviewModal> createState() => _ReviewModalState();
}

class _ReviewModalState extends State<ReviewModal> {
  int star = 0;
  String review = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
              child: Text(
                'Оставить отзыв',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            RateStar(
              star: star,
              onClick: (s) {
                setState(() {
                  star = s;
                });
              },
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                  height: 200,
                  width: 350,
                  child: TextField(
                    onChanged: (s) {
                      setState(() {
                        review = s;
                      });
                    },
                    maxLines: 4,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
                      hintText: "Введите отзыв",
                    ),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(right: 15, left: 15),
              height: 65,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  widget.onSend(star, review);
                  Navigator.of(context).pop();
                },
                child: Text("Отправить",
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
          ],
        ),

        Positioned(
          right: 0,
          top: 0,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              //
              // print(textController.text);
            },
            icon: SvgPicture.asset(
              color: Colors.black26,
              IconPath.close,
              height: 30,
              width: 30,
            ),
          ),
        ),

        // ])
      ]),
    );
  }
}
