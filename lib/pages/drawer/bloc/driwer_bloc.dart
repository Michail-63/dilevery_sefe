import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'driwer_event.dart';
part 'driwer_state.dart';

class DriwerBloc extends Bloc<DriwerEvent, DriwerState> {
  DriwerBloc() : super(DriwerInitial()) {
    on<DriwerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
