import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/data/models/review.dart';
import 'package:delivery/pages/dish/widget/new_review.dart';
import 'package:delivery/pages/dish/widget/rate_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ReviewModal extends StatefulWidget {
  final formKey = GlobalKey<FormState>();
  final void Function(int, String) onSend;

   ReviewModal({super.key, required this.onSend});

  @override
  State<ReviewModal> createState() => _ReviewModalState();
}



class _ReviewModalState extends State<ReviewModal> {
  late String name;
  late int raiting;
 late String review;
  late DateTime createdAt;


  void onFormSubmit() {
    if (widget.formKey.currentState!.validate()) {
      Box<Review> reviewBox = Hive.box<Review>(reviewsBoxName);
      reviewBox.add(Review(
        dishId: '',
        name:'',
        review:'',
        raiting:0,
        createdAt: DateTime.now(),

      ));
      Navigator.of(context).pop();
    }
  }


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      height: 500,
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
              child: Text('Оставить отзыв', style: theme.headlineSmall),
            ),
            RateStar(
              raiting: raiting,
              onClick: (s) {
                setState(() {
                  raiting = s;
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
                      hintStyle: theme.displaySmall,
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
                  onFormSubmit;
                  // widget.onSend(star, review);
                  // Navigator.of(context).pop();
                },
                child: Text("Отправить", style: theme.bodyLarge),
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
            },
            icon: SvgPicture.asset(
              color: Colors.black26,
              IconPath.close,
              height: 30,
              width: 30,
            ),
          ),
        ),
      ]),
    );
  }
}
