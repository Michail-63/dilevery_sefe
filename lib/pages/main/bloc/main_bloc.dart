import 'package:bloc/bloc.dart';
import 'package:delivery/data/CategoryData.dart';
import 'package:delivery/data/repositories/RootRepository.dart';


part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {

  final RootRepository repository;

  MainBloc(this.repository) : super(MainInitial()) {
    on<MainFetchEvent>((event, emit) async {

      emit(state.copyWith(isloading: true));


      final categories = await repository.getCategories();
      emit(state.copyWith(categories: categories,isloading: false));

    });
  }
}
