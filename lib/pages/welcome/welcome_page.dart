import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/main/main_page.dart';
import 'package:delivery/pages/registration/RegistrationPage.dart';
import 'package:delivery/pages/welcome/widget/InputTextField.dart';
import 'package:delivery/pages/welcome/widget/OrangeBatton.dart';
import 'package:delivery/pages/welcome/widget/PasvordTextField.dart';
import 'package:delivery/pages/welcome/widget/TransparentBatton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Вход"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgraund_image.png"),
            fit: BoxFit.cover,
          ),
          color: color3,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 100,
            ),
            InputTextField(name: "E-mail"),
            PasvordTextField(name: "Пароль"),
            SizedBox(
              height: 70,
            ),
            OrangeBatton(name: "Войти",goToPage: MainPage(),),
            TransparentBatton(name: "Регистрация",goToPage:RegistrationPage() ,),
            SizedBox(
              height: 110
            ),
            Container(
              margin: EdgeInsets.only(right: 90,left: 90),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Забыли пороль?",
                    style: theme.labelLarge,
                  )),
            ),
          ],
        ),
      ),

    );
  }
}

