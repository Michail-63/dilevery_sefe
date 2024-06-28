import 'package:bloc/bloc.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final DishRepository dishRepository;

  CartBloc(this.dishRepository) : super(CartInitialState()) {
    on<CartFetchEvent>((event, emit) async {
      final listDishesToCart = await dishRepository.getDishesToCart();
      emit(state.copyWith(dishesToCArt: listDishesToCart));
    });

    on<IncrementCartEvent>((event, emit) async {
      await dishRepository.AddDishToCart(event.dishId);
      final listDishesToCart = await dishRepository.getDishesToCart();
      emit(state.copyWith(dishesToCArt: listDishesToCart));
    });

    on<DecrementCartEvent>((event, emit) async {
      await dishRepository.DeleteDishToCart(event.dishId);
      final listDishesToCart = await dishRepository.getDishesToCart();
      emit(state.copyWith(dishesToCArt: listDishesToCart));
    });
  }
}
