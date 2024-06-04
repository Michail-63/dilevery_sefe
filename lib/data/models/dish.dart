class Dish {
  const Dish({
    required this.text,
    required this.title,
    required this.price,
    required this.image,
  });

  final String title;
  final int price;
  final String image;
  final String text;
}


class DishToBasket extends Dish{
  DishToBasket( {required super.text, required super.title, required super.price, required super.image,required this.countToBasket,});

  final int countToBasket;

}
