part of 'cart_bloc.dart';

class CartState extends Equatable {
  final List<CountDishToCart> countDishToCart;
  final List<NewDish> dishesToCart;
  final String promo;

  // int get totalPrice {
  //   int total = 0;
  //   for (int i = 0; i < dishesToCArt.length; i++) {
  //     // print('Item = ${dishesToCArt[i].price}');
  //     final sum = dishesToCArt[i].count * dishesToCArt[i].price;
  //     total = total + sum;
  //   }
  //   return total;
  // }

  CartState({
    required this.countDishToCart,
    required this.dishesToCart,
    required this.promo,
  });

  CartState copyWith({
    String? promo,
    List<NewDish>? dishesToCart,
    List<CountDishToCart>? countDishToCart,
  }) {
    return CartState(
      promo: promo ?? this.promo,
      countDishToCart: countDishToCart ?? this.countDishToCart,
      dishesToCart: dishesToCart ?? this.dishesToCart,
    );
  }

  @override
  List<Object?> get props => [
        promo,
        dishesToCart,
        countDishToCart,
      ];
}

final class CartInitialState extends CartState {
  CartInitialState()
      : super(
          promo: "",
          dishesToCart: [],
          countDishToCart: [],
        );
}
