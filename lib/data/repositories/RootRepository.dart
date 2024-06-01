import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/models/CategoryData.dart';
import 'package:delivery/data/models/DishData.dart';

class RootRepository {

  Future<Category> getCategory(name) async {
    await Future.delayed(Duration(seconds: 2));
    return _categories.firstWhere((element) => element.title == name);
  }

  Future<List<Category>> getCategories() async {
    await Future.delayed(Duration(seconds: 2));
print('dcfasdfc111111');
    return _categories;
  }



  List<Category> _categories = [
    Category(title: "Рекомендуемое", dishes: [
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
          'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
          'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
      Dish(
          title: "Сет Королевский",
          price: 12,
          image: ImagePass.sushi,
          text:
          'Филадельфия, Карелия, Фиdfbdfbdладельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),

      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
      Dish(
          title: "Пицца Маргарита",
          price: 700,
          image: ImagePass.piza,
          text:
          'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
      Dish(
          title: "Паска с креветками",
          price: 1000,
          image: ImagePass.pasta1,
          text:
              'Паста Паста с креветками и брокколи – это настоящая гастрономическая'
              'находка для ценителей итальянской кухни. Паста пропитана сочными и '
              'насыщенными вкусами, которые оставят вас в восторге.'),
      Dish(
          title: "Паста с тунцом",
          price: 1000,
          image: ImagePass.pasta2,
          text: 'В Италии не принято посыпать тертым пармезаном пасту с рыбой '
              'или морепродуктами, но если очень хочется, я не вижу причин этого '
              'себе не позволить.'),
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
    ]),
    Category(title: "Популярное", dishes: [
      Dish(
          title: "Паска с креветками",
          price: 1000,
          image: ImagePass.pasta1,
          text:
              'Паста Паста с креветками и брокколи – это настоящая гастрономическая'
              'находка для ценителей итальянской кухни. Паста пропитана сочными и '
              'насыщенными вкусами, которые оставят вас в восторге.'),
      Dish(
          title: "Паста с тунцом",
          price: 1000,
          image: ImagePass.pasta2,
          text: 'В Италии не принято посыпать тертым пармезаном пасту с рыбой '
              'или морепродуктами, но если очень хочется, я не вижу причин этого '
              'себе не позволить.'),
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
      Dish(
          title: "Паска с креветками",
          price: 1000,
          image: ImagePass.pasta1,
          text:
              'Паста Паста с креветками и брокколи – это настоящая гастрономическая'
              'находка для ценителей итальянской кухни. Паста пропитана сочными и '
              'насыщенными вкусами, которые оставят вас в восторге.'),
    ]),
    Category(title: "Избранное", dishes: [
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    ]),
    Category(title: "111", dishes: [
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    ]),
    Category(title: "222", dishes: [
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    ]),
    Category(title: "333", dishes: [
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    ]),
    Category(title: "444", dishes: [
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    ]),
    Category(title: "555", dishes: [
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    ]),
    Category(title: "666", dishes: [
      Dish(
          title: "Суп с морепродуктами",
          price: 1250,
          image: ImagePass.soup,
          text:
              'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
              'суп на основе креветочного бульона(биск), белая рыба '
              'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
      Dish(
          title: "Итальянская Питцца",
          price: 1399,
          image: ImagePass.piza2,
          text: 'Главная особенность итальянской пиццы - тонкое тесто.'
              'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
              'Оно должно получиться мягким и эластичным, чтобы без труда можно '
              'было раскатать тонкие лепешки'),
      Dish(
          title: "Сет Королевский",
          price: 1280,
          image: ImagePass.sushi,
          text:
              'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
              'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
      Dish(
          title: "Пицца Маргарита",
          price: 680,
          image: ImagePass.piza,
          text:
              'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
              'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
              'отведать популярное блюдо бедняков – пиццу и специально для этого '
              'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    ]),
  ];


}
