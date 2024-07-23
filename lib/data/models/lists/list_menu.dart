import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/models/menu.dart';
import 'package:delivery/data/repositories/api_repository.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:delivery/pages/category/category_page.dart';
import 'package:delivery/pages/menu/bloc/menu_bloc.dart';
import 'package:delivery/pages/menu/widget/menu_category_page.dart';
import 'package:delivery/pages/profile/ProfilePage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

late final ApiRepository apiRepository;

final List<Menu> menu = [
  Menu(
      title: 'Акции', icon: IconPath.star),
  Menu(
      title: 'Напитки', icon: IconPath.napitki),
  Menu(
      title: 'Соусы', icon: IconPath.soup),
  Menu(
      title: 'Закуски', icon: IconPath.zakyski),
  Menu(
      title: 'Десерты', icon: IconPath.deserty),
  Menu(
      title: 'Салаты', icon: IconPath.salaty),
  Menu(
      title: 'Пельмени', icon: IconPath.pelmeni),
  Menu(
      title: 'Паста', icon: IconPath.pasta),
  Menu(
      title: 'Гарниры', icon: IconPath.garniry),
  Menu(
      title: 'Основное блюдо',
      icon: IconPath.osnovnoe_bludo,
      ),


];
