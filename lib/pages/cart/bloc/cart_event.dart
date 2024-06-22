part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class CartFetchEvent extends CartEvent {}

class IncrementCartEvent extends CartEvent {}

class DecrementCartEvent extends CartEvent {}
