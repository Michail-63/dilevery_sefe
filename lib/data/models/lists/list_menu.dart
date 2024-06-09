
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/models/menu.dart';
import 'package:delivery/pages/profile/ProfilePage.dart';


final List<Menu> menu = [
  Menu(
      title: 'Акции', icon: IconPath.star, dst: ProfilePage()),
  Menu(
      title: 'Напитки', icon: IconPath.napitki, dst: ProfilePage()),
  Menu(
      title: 'Соусы', icon: IconPath.soup, dst: ProfilePage()),
  Menu(
      title: 'Закуски', icon: IconPath.zakyski, dst: ProfilePage()),
  Menu(
      title: 'Десерты', icon: IconPath.deserty, dst: ProfilePage()),
  Menu(
      title: 'Салаты', icon: IconPath.salaty, dst: ProfilePage()),
  Menu(
      title: 'Пельмени', icon: IconPath.pelmeni, dst: ProfilePage()),
  Menu(
      title: 'Паста', icon: IconPath.pasta, dst: ProfilePage()),
  Menu(
      title: 'Гарниры', icon: IconPath.garniry, dst: ProfilePage()),
  Menu(
      title:'Основное блюдо', icon: IconPath.osnovnoe_bludo, dst: ProfilePage()),


];
