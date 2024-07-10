part of 'cart_bloc.dart';

class CartState extends Equatable {
  final List<DishToCart> listDishToCart;
  final String promo;

  int get totalPrice {
    int total = 0;
    for (int i = 0; i < listDishToCart.length; i++) {
      // print('Item = ${dishesToCArt[i].price}');
      final sum = listDishToCart[i].count * listDishToCart[i].price;
      total = total + sum;
    }
    return total;
  }

  CartState({
    required this.listDishToCart,
    required this.promo,
  });

  CartState copyWith({
    String? promo,
    List<DishToCart>? listDishToCart,
  }) {
    return CartState(
      promo: promo ?? this.promo,
      listDishToCart: listDishToCart ?? this.listDishToCart,
    );
  }

  @override
  List<Object?> get props => [
        promo,
        listDishToCart,
      ];
}

final class CartInitialState extends CartState {
  CartInitialState()
      : super(
          promo: "",
          listDishToCart: [],
        );
}
