import 'package:bloc/bloc.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final DishRepository dishRepository;
  CategoryBloc(this.dishRepository) : super(CategoryInitial()) {
    on<CategoryEvent>((event, emit) {

    });

    on<AddToCartCaregoryEvent>((event, emit) async {
      await dishRepository.AddDishToCart(event.dishId);
    });
  }
}
