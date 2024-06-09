import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/models/category.dart';
import 'package:delivery/data/models/dish.dart';

List<Category> categories = [
  Category(title: "Рекомендуемое", dishes: [
    Dish(
      id: '0',
        title: "Сет Королевский",
        price: 1280,
        image: ImagePass.sushi,
        text:
            'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
            'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
    Dish(
        id: '1',
        title: "Пицца Маргарита",
        price: 680,
        image: ImagePass.piza,
        text:
            'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
            'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
            'отведать популярное блюдо бедняков – пиццу и специально для этого '
            'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    Dish(
        id: '2',
        title: "Сет Королевский",
        price: 12,
        image: ImagePass.sushi,
        text:
            'Филадельфия, Карелия, Фиdfbdfbdладельфия с тунцом, Калифорния со снежным крабом, '
            'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
    Dish(
        id: '3',
        title: "Сет Королевский",
        price: 1280,
        image: ImagePass.sushi,
        text:
            'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
            'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
    Dish(
        id: '4',
        title: "Пицца Маргарита",
        price: 680,
        image: ImagePass.piza,
        text:
            'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
            'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
            'отведать популярное блюдо бедняков – пиццу и специально для этого '
            'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    Dish(
        id: '5',
        title: "Пицца Маргарита",
        price: 700,
        image: ImagePass.piza,
        text:
            'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
            'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
            'отведать популярное блюдо бедняков – пиццу и специально для этого '
            'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    Dish(
        id: '6',
        title: "Паска с креветками",
        price: 1000,
        image: ImagePass.pasta1,
        text:
            'Паста Паста с креветками и брокколи – это настоящая гастрономическая'
            'находка для ценителей итальянской кухни. Паста пропитана сочными и '
            'насыщенными вкусами, которые оставят вас в восторге.'),
    Dish(
        id: '7',
        title: "Паста с тунцом",
        price: 1000,
        image: ImagePass.pasta2,
        text: 'В Италии не принято посыпать тертым пармезаном пасту с рыбой '
            'или морепродуктами, но если очень хочется, я не вижу причин этого '
            'себе не позволить.'),
    Dish(
        id: '8',
        title: "Суп с морепродуктами",
        price: 1250,
        image: ImagePass.soup,
        text: 'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
            'суп на основе креветочного бульона(биск), белая рыба '
            'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
    Dish(
        id: '9',
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
        id: '10',
        title: "Паска с креветками",
        price: 1000,
        image: ImagePass.pasta1,
        text:
            'Паста Паста с креветками и брокколи – это настоящая гастрономическая'
            'находка для ценителей итальянской кухни. Паста пропитана сочными и '
            'насыщенными вкусами, которые оставят вас в восторге.'),
    Dish(
        id: '11',
        title: "Паста с тунцом",
        price: 1000,
        image: ImagePass.pasta2,
        text: 'В Италии не принято посыпать тертым пармезаном пасту с рыбой '
            'или морепродуктами, но если очень хочется, я не вижу причин этого '
            'себе не позволить.'),
    Dish(
        id: '12',
        title: "Суп с морепродуктами",
        price: 1250,
        image: ImagePass.soup,
        text: 'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
            'суп на основе креветочного бульона(биск), белая рыба '
            'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
    Dish(
        id: '13',
        title: "Итальянская Питцца",
        price: 1399,
        image: ImagePass.piza2,
        text: 'Главная особенность итальянской пиццы - тонкое тесто.'
            'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
            'Оно должно получиться мягким и эластичным, чтобы без труда можно '
            'было раскатать тонкие лепешки'),
    Dish(
        id: '14',
        title: "Сет Королевский",
        price: 1280,
        image: ImagePass.sushi,
        text:
            'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
            'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
    Dish(
        id: '15',
        title: "Пицца Маргарита",
        price: 680,
        image: ImagePass.piza,
        text:
            'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
            'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
            'отведать популярное блюдо бедняков – пиццу и специально для этого '
            'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
    Dish(
        id: '16',
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
        id: '17',
        title: "Суп с морепродуктами",
        price: 1250,
        image: ImagePass.soup,
        text: 'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
            'суп на основе креветочного бульона(биск), белая рыба '
            'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
    Dish(
        id: '18',
        title: "Итальянская Питцца",
        price: 1399,
        image: ImagePass.piza2,
        text: 'Главная особенность итальянской пиццы - тонкое тесто.'
            'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
            'Оно должно получиться мягким и эластичным, чтобы без труда можно '
            'было раскатать тонкие лепешки'),
    Dish(
        id: '19',
        title: "Сет Королевский",
        price: 1280,
        image: ImagePass.sushi,
        text:
            'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
            'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
    Dish(
        id: '20',
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
