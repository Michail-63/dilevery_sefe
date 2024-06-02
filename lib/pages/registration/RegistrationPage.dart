import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/main/main_page.dart';
import 'package:delivery/pages/welcome/widget/InputTextField.dart';
import 'package:delivery/pages/welcome/widget/OrangeBatton.dart';
import 'package:delivery/pages/welcome/widget/PasvordTextField.dart';
import 'package:delivery/pages/welcome/widget/TransparentBatton.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Регистрация"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgraund_image.png"),
            fit: BoxFit.cover,
          ),
          color: color3,
        ),
        child: Column(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 25,
                ),
                InputTextField(name: "Имя"),
                InputTextField(name: "Фамилия"),
                InputTextField(name: "E-mail"),
                PasvordTextField(name: "Пароль"),
                SizedBox(
                  height: 70,
                ),
                OrangeBatton(
                  name: "Зарегистрироваться",
                  goToPage: MainPage(),
                ),
                TransparentBatton(
                  name: "Вход",
                  goToPage: MainPage(),
                ),
                SizedBox(height: 110),

              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 90, left: 90),
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
