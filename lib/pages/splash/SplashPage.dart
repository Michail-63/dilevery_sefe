import 'package:delivery/config/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => goToPage));
    });

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/backgraund_image.png"),
            fit: BoxFit.cover,
          ),
          color: color3),
      child: Image(image: AssetImage("assets/images/logo.png")),
    ) //
        );
  }
}
