part of 'main_bloc.dart';
 class MainState {

   final List<Category> categories;
   final bool isloading;
  MainState(  {required this.categories, required this.isloading});

   MainState copyWith({ List<Category>? categories,bool? isloading }) {
     return MainState(
         categories: categories ?? this.categories,
         isloading: isloading ?? this.isloading,


     );
   }
 }
final class MainInitial extends MainState {

  MainInitial() : super(categories: [],isloading: false);

}
