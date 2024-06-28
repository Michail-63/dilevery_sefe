part of 'cart_bloc.dart';

class CartState extends Equatable {
  final List<NewDish> dishesToCArt;
  final String promo;

  int get totalPrice {
    int total = 0;
    for (int i = 0; i < dishesToCArt.length; i++) {
      // print('Item = ${dishesToCArt[i].price}');
      final sum = dishesToCArt[i].count * dishesToCArt[i].price;
      total = total + sum;
    }
    return total;
  }

  CartState({
    required this.dishesToCArt,
    required this.promo,
  });

  CartState copyWith({
    String? promo,
    List<NewDish>? dishesToCArt,
  }) {
    return CartState(
      promo: promo ?? this.promo,
      dishesToCArt: dishesToCArt ?? this.dishesToCArt,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [promo, dishesToCArt];
}

final class CartInitialState extends CartState {
  CartInitialState()
      : super(
          promo: "",
          dishesToCArt: [],
        );
}
