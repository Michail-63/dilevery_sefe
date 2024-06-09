import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
          title: Text('Профиль')
      ),
      body:TextButton(
        onPressed: () {  },
        child: Text("dsvfsdvsd"),
      ),
    );
  }
}


