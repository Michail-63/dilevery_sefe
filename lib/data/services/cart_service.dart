import 'dart:collection';
import 'package:delivery/data/models/cart_item.dart';
import 'package:flutter/cupertino.dart';

class CartService extends ChangeNotifier{

  final List<CartItem>_items =[];
  UnmodifiableListView<CartItem> get items =>UnmodifiableListView(_items);
  void add(CartItem item){
    _items.add(item);
    notifyListeners();
  }

}