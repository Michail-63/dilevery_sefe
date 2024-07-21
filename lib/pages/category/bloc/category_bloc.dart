import 'package:bloc/bloc.dart';
import 'package:delivery/data/repositories/new_ dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final DishToCartRepository dishToCartRepository;

  CategoryBloc(
    this.dishToCartRepository,
  ) : super(CategoryInitial()) {
    on<CategoryEvent>((event, emit) {});

    on<AddToCartCaregoryEvent>((event, emit) async {
      await dishToCartRepository.AddCountToDish(event.dishId);
    });
  }
}
