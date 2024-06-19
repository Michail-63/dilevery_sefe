import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/main/main_page.dart';
import 'package:delivery/pages/registration/RegistrationPage.dart';
import 'package:delivery/pages/welcome/widget/InputTextField.dart';
import 'package:delivery/pages/welcome/widget/OrangeBatton.dart';
import 'package:delivery/pages/welcome/widget/PasvordTextField.dart';
import 'package:delivery/pages/welcome/widget/TransparentBatton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Вход"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/backgraund_image.png"),
            fit: BoxFit.cover,
          ),
          color: color3,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            const InputTextField(name: "E-mail"),
            const PasvordTextField(name: "Пароль"),
            const SizedBox(
              height: 70,
            ),
            OrangeBatton(name: "Войти",goToPage: const MainPage(),),
            TransparentBatton(name: "Регистрация",goToPage:const RegistrationPage() ,),
            const SizedBox(
              height: 110
            ),
            Container(
              margin: const EdgeInsets.only(right: 90,left: 90),
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

