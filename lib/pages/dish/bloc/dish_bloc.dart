import 'package:bloc/bloc.dart';
import 'package:delivery/data/Review.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'dish_event.dart';

part 'dish_state.dart';

class DishBloc extends Bloc<DishEvent, DishState> {
  DishBloc() : super(DishInitialState()) {
    on<IncrementCountDishEvent>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });

    on<DecrementCountDishEvent>((event, emit) {
      emit(state.copyWith(count: state.count - 1));
    });

    on<NewReviewDishEvent>((event, emit) async {
      print('reviews1 = ${state.reviews.length}');
      final Review newReview = Review(
          review: event.review,
          name: 'Галя',
          raiting: event.star,
          createdAt: DateTime.now());
      final List<Review> newReviews = state.reviews;
      newReviews.add(newReview);
      emit(state.copyWith(reviews: newReviews));
      print('reviews2 = ${state.reviews.length}');
    });
  }
}
