part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}


class IncrementCartEvent extends CartEvent {}

class DecrementCartEvent extends CartEvent {}
