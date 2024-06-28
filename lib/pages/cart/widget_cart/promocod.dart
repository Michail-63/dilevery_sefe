import 'package:delivery/config/theme.dart';
import 'package:flutter/material.dart';

class Promocod extends StatefulWidget {
  @override
  _PromocodWidget createState() => _PromocodWidget();
}

class _PromocodWidget extends State<Promocod> {
  final TextEditingController _controller = TextEditingController();

  String _text = '';
  Color _color = color2;

  void Change() => _color = color2;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, right: 20),
              width: 200,
              child: TextField(
                style: theme.bodyLarge,
                controller: _controller,
                onChanged: (value) {
                  setState(() {
                    _text = value;
                  });
                },
                decoration: InputDecoration(
                    hintStyle: theme.labelSmall, hintText: "Введите промокод"),
              ),
            ),
            MaterialButton(
              onPressed: _text.isEmpty
                  ? null
                  : () {
                      setState(() {
                        _text = _controller.text;
                      });
                    },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _color,
                  ),
                  width: 120,
                  height: 60,
                  child:
                      Center(child: Text('Применить', style: theme.bodySmall))),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
