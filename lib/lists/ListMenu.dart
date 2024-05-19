import 'package:delivery/Utils/String.dart';
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/MenuData.dart';
import 'package:delivery/pages/profile/ProfilePage.dart';


final List<Menu> menu = [
  Menu(
      title: itemMenu1, icon: IconPath.star, dst: ProfilePage()),
  Menu(
      title: itemMenu2, icon: IconPath.napitki, dst: ProfilePage()),
  Menu(
      title: itemMenu3, icon: IconPath.soup, dst: ProfilePage()),
  Menu(
      title: itemMenu4, icon: IconPath.zakyski, dst: ProfilePage()),
  Menu(
      title: itemMenu5, icon: IconPath.deserty, dst: ProfilePage()),
  Menu(
      title: itemMenu6, icon: IconPath.salaty, dst: ProfilePage()),
  Menu(
      title: itemMenu7, icon: IconPath.pelmeni, dst: ProfilePage()),
  Menu(
      title: itemMenu8, icon: IconPath.pasta, dst: ProfilePage()),
  Menu(
      title: itemMenu9, icon: IconPath.garniry, dst: ProfilePage()),
  Menu(
      title: itemMenu10, icon: IconPath.osnovnoe_bludo, dst: ProfilePage()),


];
