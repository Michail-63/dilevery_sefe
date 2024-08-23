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
      title: 'Акции', icon: IconPath.star, categoryId: '0'),
  Menu(
      title: 'Напитки', icon: IconPath.napitki, categoryId: '1'),
  Menu(
      title: 'Соусы', icon: IconPath.soup, categoryId: '2'),
  Menu(
      title: 'Закуски', icon: IconPath.zakyski, categoryId: '3'),
  Menu(
      title: 'Десерты', icon: IconPath.deserty, categoryId: '4'),
  Menu(
      title: 'Салаты', icon: IconPath.salaty, categoryId: '5'),
  Menu(
      title: 'Пельмени', icon: IconPath.pelmeni, categoryId: '6'),
  Menu(
      title: 'Паста', icon: IconPath.pasta, categoryId: '7'),
  Menu(
      title: 'Гарниры', icon: IconPath.garniry, categoryId: '8'),
  Menu(
      title: 'Основное блюдо',
      icon: IconPath.osnovnoe_bludo, categoryId: '9'
      ),


];
