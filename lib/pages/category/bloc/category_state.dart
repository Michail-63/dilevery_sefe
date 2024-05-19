part of 'category_bloc.dart';

 class CategoryState extends Equatable {

  final bool isloading;
  final String title;
  final List<Dish> dishes;

  CategoryState({required this.title, required this.dishes,required this.isloading});

  CategoryState copyWith({ List<Dish>? dishes,String? title,bool? isloading }) {
    return  CategoryState(
      title: title ?? this.title,
      dishes: dishes ?? this.dishes,
      isloading: isloading ?? this.isloading,
    );
  }

    @override
  List<Object?> get props => [title, dishes,isloading];
}

final class CategoryInitialState extends CategoryState {
  CategoryInitialState() : super(title: '', dishes: [],isloading: false);
}

