


import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/root_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {

  final RootRepository repository;

  MainBloc(this.repository) : super(MainInitial()) {
    on<MainFetchEvent>((event, emit) async {

      emit(state.copyWith(isloading: true));


      final listDish = await repository.getRecommendedDish();
      emit(state.copyWith(recommendedDishes: listDish,isloading: false));

    });
  }
}
