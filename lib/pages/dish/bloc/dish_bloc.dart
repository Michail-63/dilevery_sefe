import 'package:bloc/bloc.dart';
import 'package:delivery/data/models/review.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';

part 'dish_event.dart';

part 'dish_state.dart';

class DishBloc extends Bloc<DishEvent, DishState> {
  DishBloc() : super(DishInitialState()) {
    on<IncrementCountDishEvent>((event, emit) async{
      var box = await Hive.openBox('dishBox');
      emit(state.copyWith(count: state.count + 1));
      box.put('count', state.count);

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
