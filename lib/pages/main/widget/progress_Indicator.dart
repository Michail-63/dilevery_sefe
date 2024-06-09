
import 'package:flutter/material.dart';

class WidgetProgressIndicator extends StatelessWidget {
  const WidgetProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
