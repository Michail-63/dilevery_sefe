import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delivery/data/models/count_dish_to_cart.dart';
import 'package:delivery/data/models/dish_to_cart.dart';
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
  StreamSubscription<List<DishToCart>>? _subscription;

  CartBloc(
    this.dishRepository,
    this.dishToCartRepository,
  ) : super(CartInitialState()) {
    on<UpdateDishToCartEvent>((event, emit) {
      emit(state.copyWith(listDishToCart: event.listDishTocart));
    });

    on<IncrementCartEvent>((event, emit) async {
      await dishToCartRepository.AddCountToDish(event.dishId);
      final listCountDish = await dishToCartRepository.getDishToCArt();
      emit(state.copyWith(
        listDishToCart: listCountDish,
      ));
    });

    on<DecrementCartEvent>((event, emit) async {
      await dishToCartRepository.DeleteCountToDish(event.dishId);
      final listCountDish = await dishToCartRepository.getDishToCArt();
      emit(state.copyWith(
        listDishToCart: listCountDish,
      ));
    });

    on<CartFetchEvent>((event, emit) async {
      final listCountDish = await dishToCartRepository.getDishToCArt();
      emit(state.copyWith(
        listDishToCart: listCountDish,
      ));
    });

    _subscription = dishToCartRepository.countStream().listen((event) {
      add(UpdateDishToCartEvent(listDishTocart: []));
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
