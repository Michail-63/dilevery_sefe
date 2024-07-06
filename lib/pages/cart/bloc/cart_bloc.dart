import 'package:bloc/bloc.dart';
import 'package:delivery/data/models/count_dish_to_cart.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final DishRepository dishRepository;
  final DishToCartRepository dishToCartRepository;

  CartBloc(
    this.dishRepository,
    this.dishToCartRepository,
  ) : super(CartInitialState()) {
    on<CartFetchEvent>((event, emit) async {
       await dishToCartRepository.getCountDish();
       await dishRepository.getBogyDishesToCart();


    });

    on<IncrementCartEvent>((event, emit) async {
      await dishToCartRepository.AddCountToDish(event.dishId);
      await dishToCartRepository.getCountDish();
      await dishRepository.getBogyDishesToCart();
    });

    on<DecrementCartEvent>((event, emit) async {
      await dishToCartRepository.DeleteCountToDish(event.dishId);
      await dishToCartRepository.getCountDish();
      await dishRepository.getBogyDishesToCart();


    });
  }
}
