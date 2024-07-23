part of 'menu_bloc.dart';

class MenuState extends Equatable {
  final List<Menu> menuItem;
  final List<DishModel> categoryDishes;

  // final List<DishModel> stockDishes;
  // final List<DishModel> drinkDishes;
  // final List<DishModel> saucesForDishes;
  // final List<DishModel> snacksDishes;
  // final List<DishModel> dessertsDishes;
  // final List<DishModel> saladsDishes;
  // final List<DishModel> dumplingsDishes;
  // final List<DishModel> pastaDishes;
  // final List<DishModel> sideDishes;
  // final List<DishModel> mainDishes;

  MenuState({
    // required this.stockDishes,
    // required this.drinkDishes,
    // required this.saucesForDishes,
    // required this.snacksDishes,
    // required this.dessertsDishes,
    // required this.saladsDishes,
    // required this.dumplingsDishes,
    // required this.pastaDishes,
    // required this.sideDishes,
    // required this.mainDishes,
    required this.categoryDishes,
    required this.menuItem,
  });

  MenuState copyWith({
    final List<Menu>? menuItem,
    final List<DishModel>? categoryDishes,
    // final List<DishModel>? stockDishes,
    // final List<DishModel>? drinkDishes,
    // final List<DishModel>? saucesForDishes,
    // final List<DishModel>? snacksDishes,
    // final List<DishModel>? dessertsDishes,
    // final List<DishModel>? saladsDishes,
    // final List<DishModel>? dumplingsDishes,
    // final List<DishModel>? pastaDishes,
    // final List<DishModel>? sideDishes,
    // final List<DishModel>? mainDishes,
  }) {
    return MenuState(
      menuItem: menuItem ?? this.menuItem,
      categoryDishes: categoryDishes ?? this.categoryDishes,
      // stockDishes: stockDishes ?? this.stockDishes,
      // drinkDishes: drinkDishes ?? this.drinkDishes,
      // saucesForDishes: saucesForDishes ?? this.saucesForDishes,
      // dessertsDishes: dessertsDishes ?? this.dessertsDishes,
      // saladsDishes: saladsDishes ?? this.saladsDishes,
      // dumplingsDishes: dumplingsDishes ?? this.dumplingsDishes,
      // pastaDishes: pastaDishes ?? this.pastaDishes,
      // sideDishes: sideDishes ?? this.sideDishes,
      // mainDishes: mainDishes ?? this.mainDishes,
      // snacksDishes: snacksDishes ?? this.snacksDishes,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        // stockDishes,
        // drinkDishes,
        // saucesForDishes,
        // snacksDishes,
        // dessertsDishes,
        // saladsDishes,
        // dumplingsDishes,
        // pastaDishes,
        // sideDishes,
        // mainDishes,
        categoryDishes,
        menuItem
      ];
}

final class MenuInitial extends MenuState {
  MenuInitial()
      : super(
          // dessertsDishes: [],
          // drinkDishes: [],
          // dumplingsDishes: [],
          // mainDishes: [],
          // pastaDishes: [],
          // saladsDishes: [],
          // saucesForDishes: [],
          // sideDishes: [],
          // snacksDishes: [],
          // stockDishes: [],
          categoryDishes: [],
          menuItem: menu,
        );
}
