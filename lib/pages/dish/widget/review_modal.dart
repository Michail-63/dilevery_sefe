import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/dish/widget/rate_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  // widget.onSend(star, review);
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
