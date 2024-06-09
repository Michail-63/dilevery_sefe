import 'package:delivery/config/icon_path.dart';
import 'package:delivery/config/theme.dart';
import 'package:delivery/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final  theme = Theme.of(context).textTheme;

    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
          title: Text('Уведомления'),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
              ),

              onPressed: () {
                print("ON TAP 1");
                // handle the press
              },
            ),

          ]),
      body:ListView.separated(
        itemCount: 4,
       separatorBuilder: (context, index) => const Divider(
         color: Colors.white30,
       ),
        itemBuilder: (context, i) => ListTile(
          title: Text(
            "Заказ №56787 достовляется",
            style: theme.bodyMedium,
          ),
              subtitle: Text("Ваш заказ на сумму 1900р достовляется по адресу...",
                style: theme.labelLarge,),
          trailing: SvgPicture.asset(
            IconPath.ellipse,
            height: 15,
            width: 15,
            color: color2,),
          onTap: (){},



              ),)

      //
      // Column(
      //   children: [
      //     Notifications(),
      //     Notifications(),
      //   ],
      // ),


    );
  }
}
