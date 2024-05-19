import 'package:delivery/lists/ListDrawer.dart';
import 'package:delivery/pages/drawer/widget/DrawerBuild.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        controller: ScrollController(
          keepScrollOffset: false
        ),
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/back_images.png"),
                fit: BoxFit.cover,
              ),
              color: Colors.black87,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Иванов Иван',
                  style: TextStyle(),
                ),
                Text(
                  'sdfdf@mail.ru',style: TextStyle()
                  // style: Theme.of(context).textTheme.bodyLarge
                ),
              ],
            ),
          ),
          for (var item in menuDrawer)
            DrawerBuild(
              title: item.title,
              icon: item.icon,
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item.dst),
                );
              },
            ),
        ],
      ),
    );
  }
}


