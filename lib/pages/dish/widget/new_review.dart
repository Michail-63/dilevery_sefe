import 'package:delivery/data/models/review.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String reviewsBoxName = "review_box";

class NewReview extends StatelessWidget {
  final List<Review> review;
  const NewReview({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<Review>(reviewsBoxName).listenable(),
      builder: (context, Box<Review> box, _) {
        if (box.values.isEmpty) {
          return const Center(
            child: Text("No review"),
          );
        }
        return ListView.builder(
          itemCount: box.length,
          itemBuilder: (context, index) {
            Review? c = box.getAt(index);
            // String? relationship = relationships[c?.relationship];
            return InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (_) => AlertDialog(
                    content: Text(
                      "Do you want to delete ${c?.name}?",
                    ),
                    actions: <Widget>[
                      FloatingActionButton(
                        child: const Text("No"),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      FloatingActionButton(
                        child: const Text("Yes"),
                        onPressed: () async {
                          Navigator.of(context).pop();
                          await box.deleteAt(index);
                        },
                      ),
                    ],
                  ),
                );
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(c!.name),
                      Text(c.review),
                      Text("${c.rating}"),
                      // Text("Relationship: $relationship"),
                      // _buildDivider(),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
