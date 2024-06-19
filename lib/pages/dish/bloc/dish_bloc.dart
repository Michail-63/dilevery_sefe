import 'package:bloc/bloc.dart';
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/models/review.dart';
import 'package:delivery/data/repositories/root_repository.dart';
import 'package:equatable/equatable.dart';

part 'dish_event.dart';

part 'dish_state.dart';

class DishBloc extends Bloc<DishEvent, DishState> {
  final RootRepository repository;

  DishBloc(this.repository) : super(DishInitialState()) {

    on<DishFetchEvent>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final dish = await repository.getDish(event.dishId);
      emit(state.copyWith(isloading: false, dish: dish));
    });

    on<IncrementCountDishEvent>((event, emit) async {
      // emit(state.copyWith(count: state.count + 1));
      final updatedDish = await repository.updatedCountDish(state.dish!.id,state.dish!.count+1);
      emit(state.copyWith(dish: updatedDish));
    });

    on<DecrementCountDishEvent>((event, emit) async {
      // emit(state.copyWith(count: state.count - 1));
      final updatedDish = await repository.updatedCountDish(state.dish!.id, state.dish!.count-1,);
      emit(state.copyWith(dish: updatedDish));
    });



    on<ReviewDishEvent>((event, emit) async {
      print('reviews1 = ${state.reviews.length}');
      final Review newReview = Review(
        review: event.review,
        name: 'Галя',
        rating: event.raiting,
        createdAt: DateTime.now(),
        dishId: '',
      );
      final List<Review> newReviews = state.reviews;
      newReviews.add(newReview);
      emit(state.copyWith(reviews: newReviews));
      print('reviews2 = ${state.reviews.length}');
    });
  }
}
