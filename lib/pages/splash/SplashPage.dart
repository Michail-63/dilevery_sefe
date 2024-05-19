import 'package:delivery/config/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backgraund_image.png"),
          fit: BoxFit.cover,
        ),
        color: color3,
      ),
      child: Center(
          child: Image(
        image: AssetImage("assets/images/logo.png"),
      )),

      //
      //    child:
      //    Center(child: SvgPicture.asset(IconPath.logo))
    )

        //

        );
  }
}
