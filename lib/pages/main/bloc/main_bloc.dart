
import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/root_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';



class MainBloc extends Bloc<MainEvent, MainState> {
  var repository;




  MainBloc(this.repository) : super(MainInitial()) {
    on<MainFetchEvent>((event, emit) async {

      print('MainFetchEvent');

      emit(state.copyWith(isloading: true));


      try {
        final listDish = await repository.getRecommendedDish();


        print('MainFetchEvent $listDish');

        emit(state.copyWith(recommendedDishes: listDish, isloading: false));
      }catch(e){
        print('errorqq $e');
      }
    });
  }
}