part of 'menu_bloc.dart';

class MenuEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class MenuFetchEvent extends MenuEvent {
  // final String categoryId;
  //
  // MenuFetchEvent(this.categoryId);
  //
  // @override
  // List<Object?> get props => [categoryId];
}

class AddToCartMenuEvent extends MenuEvent {
  final String dishId;

  AddToCartMenuEvent(this.dishId);

  @override
  List<Object?> get props => [dishId];
}
