import 'package:bloc/bloc.dart';
import 'package:delivery/data/models/menu.dart';
import 'package:delivery/data/models/lists/list_menu.dart';
import "package:meta/meta.dart";

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(MenuInitial()) {
    on<MenuEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
