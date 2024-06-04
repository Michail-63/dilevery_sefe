import 'package:bloc/bloc.dart';
import 'package:delivery/data/models/dish.dart';
import 'package:delivery/data/repositories/root_repository.dart';
import 'package:equatable/equatable.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final RootRepository repository;

  CategoryBloc(this.repository) : super(CategoryInitialState()) {
    on<CategoryFetchEvent>((event, emit) async {
      emit(state.copyWith(isloading: true));

      final category = await repository.getCategory(event.category);
      emit(state.copyWith(
          dishes: category.dishes, title: category.title, isloading: false));
    });
  }
}
