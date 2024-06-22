part of 'main_bloc.dart';

class MainEvent {}

class MainFetchEvent extends MainEvent {}

class AddToCartEvent extends MainEvent {
  AddToCartEvent() {}
  @override
  List<Object?> get props => [];
}
