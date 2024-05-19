part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {}

class CategoryFetchEvent extends CategoryEvent {
  final String category;

  CategoryFetchEvent({required this.category});

  @override
  List<Object?> get props => [category];
}
