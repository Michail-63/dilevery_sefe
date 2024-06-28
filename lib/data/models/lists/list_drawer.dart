
import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/models/drawer_menu.dart';
import 'package:delivery/pages/cart/cart_page.dart';
import 'package:delivery/pages/main/main_page.dart';
import 'package:delivery/pages/menu/menu_page%20.dart';
import 'package:delivery/pages/notification/NotificationPage.dart';
import 'package:delivery/pages/order/OrdersPage.dart';
import 'package:delivery/pages/profile/ProfilePage.dart';

final List<DrawerMenuData> menuDrawer = [
  DrawerMenuData(
      title: 'Главная',
      icon: IconPath.home,
      dst: MainPage()),
  DrawerMenuData(
      title: 'Меню',
      icon: IconPath.group,
      dst: MenuPage()),
  // DrawerMenuData(
  //     title: screen3,
  //     icon: IconPath.home,
  //     dst: CategoryPage(selectedCategory: null,)),
  DrawerMenuData(
      title: 'Корзина',
      icon: IconPath.cart,
      dst: CartPage()),
  DrawerMenuData(
      title: 'Профиль',
      icon: IconPath.user,
      dst: ProfilePage()),
  DrawerMenuData(
      title: 'Заказы',
      icon: IconPath.list,
      dst: OrderPage()),
  DrawerMenuData(
      title: 'Уведомления',
      icon: IconPath.bell,
      dst: NotificationPage()),
];