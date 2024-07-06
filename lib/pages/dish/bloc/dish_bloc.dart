import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/models/review.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:delivery/data/repositories/review_repository.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dish_event.dart';

part 'dish_state.dart';

class DishBloc extends Bloc<DishEvent, DishState> {
  final ReviewRepository reviewRepository;
  final DishRepository dishRepository;
  final DishToCartRepository dishToCartRepository;

  DishBloc(
    this.dishRepository,
    this.reviewRepository,
    this.dishToCartRepository,
  ) : super(DishInitialState()) {
    on<DishFetchEvent>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final reviews = await reviewRepository.getReviews(event.dishId);
      final dish = await dishRepository.getDish(event.dishId);
      emit(state.copyWith(
        isloading: false,
        dish: dish,
        reviews: reviews,
      ));
    });

    on<IncrementCountDishEvent>((event, emit) async {
      emit(state.copyWith(count: state.count + 1));
      // final updatedDish = await dishRepository.updatedCountDish(
      //     state.dish!.dishId, state.dish!.count + 1);
      // emit(state.copyWith(dish: updatedDish));
    });

    on<DecrementCountDishEvent>((event, emit) async {
      if (state.count >= 1) {
        emit(state.copyWith(count: state.count - 1));
      }
      // final updatedDish = await dishRepository.updatedCountDish(
      //   state.dish!.dishId,
      //   state.dish!.count - 1,
      // );
      // emit(state.copyWith(dish: updatedDish));
    });

    on<AddDishToCartEvent>((event, emit) async {
      // final updatedDish =
      await dishToCartRepository.updatedCountDish(
        state.dish!.dishId,
        state.count,
      );
      // emit(state.copyWith(dish: updatedDish));
    });

    on<AddReviewDishEvent>((event, emit) async {
      await reviewRepository.addReview(
          event.dishId, event.coment, event.rating);
      final reviews = await reviewRepository.getReviews(event.dishId);

      emit(state.copyWith(reviews: reviews));
    });

    on<DeleteReviewDishEvent>((event, emit) async {
      final reviews = await reviewRepository.deleteReviews(event.dishId);

      emit(state.copyWith(reviews: reviews));
    });
  }
}
