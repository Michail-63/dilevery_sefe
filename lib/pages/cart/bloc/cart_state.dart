part of 'cart_bloc.dart';

class CartState {
  final List<NewDish> dishesToCArt;
  final int count;
  final NewDish? dish;
  final String promo;

  CartState({
    required this.count,
    required this.dishesToCArt,
    required this.promo,
    required this.dish,
  });

  CartState copyWith({
    int? count,
    String? promo,
    List<NewDish>? dishesToCArt,
    NewDish? dish,
  }) {
    return CartState(
      count: count ?? this.count,
      promo: promo ?? this.promo,
      dish: dish ?? this.dish,
      dishesToCArt: dishesToCArt ?? this.dishesToCArt,
    );
  }
}

final class CartInitialState extends CartState {
  CartInitialState()
      : super(
          dish: null,
          count: 0,
          promo: "",
          dishesToCArt: [],
        );
}
