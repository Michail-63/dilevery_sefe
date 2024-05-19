part of 'cart_bloc.dart';


 class CartState {
   final count ;
  final String promo;


  CartState({required this.count, required this.promo});

  CartState copyWith({ int? count, String? promo}) {
    return CartState(
        count: count ?? this.count,
        promo: promo ?? this.promo
    );
  }


}

final class CartInitialState extends CartState {

  CartInitialState() : super(count: 0,promo:"");
}
