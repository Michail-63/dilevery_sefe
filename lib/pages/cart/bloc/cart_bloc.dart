import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitialState()) {


      on<IncrementCartEvent>((event, emit) {
        emit(state.copyWith(count: state.count +1));
      });

      on<DecrementCartEvent>((event, emit) {
        emit(state.copyWith(count: state.count -1));


    });
  }
}
