import 'package:delivery/Utils/String.dart';
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
      title: screen1,
      icon: IconPath.home,
      dst: MainPage()),
  DrawerMenuData(
      title: screen2,
      icon: IconPath.group,
      dst: MenuPage()),
  // DrawerMenuData(
  //     title: screen3,
  //     icon: IconPath.home,
  //     dst: CategoryPage(selectedCategory: null,)),
  DrawerMenuData(
      title: screen4,
      icon: IconPath.cart,
      dst: CartPage()),
  DrawerMenuData(
      title: screen5,
      icon: IconPath.user,
      dst: ProfilePage()),
  DrawerMenuData(
      title: screen6,
      icon: IconPath.list,
      dst: OrderPage()),
  DrawerMenuData(
      title: screen7,
      icon: IconPath.bell,
      dst: NotificationPage()),
];