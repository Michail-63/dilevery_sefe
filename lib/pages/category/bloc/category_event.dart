part of 'category_bloc.dart';

@immutable
sealed class CategoryEvent {}


class AddToCartCaregoryEvent extends CategoryEvent {
  final String dishId;

  AddToCartCaregoryEvent(this.dishId);

  @override
  List<Object?> get props => [dishId];
}
