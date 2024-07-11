import 'package:delivery/config/icon_path.dart';
import 'package:delivery/data/models/new_dish.dart';

List<NewDish> listDish = [
  NewDish(
    dishId: '0',
    isRecommended: true,
    isFavorites: false,
    isTheBest: false,
    isPopular: false,
    text:
        'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
        'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой',
    title: "Сет Королевский",
    price: 599,
    count: 0,
    image: ImagePass.sushi,
  ),
  NewDish(
    dishId: '1',
    isRecommended: true,
    isFavorites: false,
    isTheBest: false,
    isPopular: false,
    title: "Пицца Маргарита",
    price: 680,
    image: ImagePass.piza,
    count: 0,
    text:
        'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
        'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
        'отведать популярное блюдо бедняков – пиццу и специально для этого '
        'события была приготовлена пицца окрашенная в цвета итальянского флага. ',
  ),
  NewDish(
      dishId: '2',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: false,
      title: "Сет Королевский",
      price: 1999,
      image: ImagePass.sushi,
      count: 0,
      text:
          'Филадельфия, Карелия, Фиdfbdfbdладельфия с тунцом, Калифорния со снежным крабом, '
          'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
  NewDish(
      dishId: '3',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: false,
      title: "Сет Королевский",
      price: 1280,
      image: ImagePass.sushi,
      count: 0,
      text:
          'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
          'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
  NewDish(
      dishId: '4',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: false,
      title: "Пицца Маргарита",
      price: 680,
      image: ImagePass.piza,
      count: 0,
      text:
          'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
          'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
          'отведать популярное блюдо бедняков – пиццу и специально для этого '
          'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
  NewDish(
      dishId: '5',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: false,
      title: "Пицца Маргарита",
      price: 700,
      image: ImagePass.piza,
      count: 0,
      text:
          'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
          'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
          'отведать популярное блюдо бедняков – пиццу и специально для этого '
          'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
  NewDish(
      dishId: '6',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: false,
      title: "Паска с креветками",
      price: 1000,
      image: ImagePass.pasta1,
      count: 0,
      text:
          'Паста Паста с креветками и брокколи – это настоящая гастрономическая'
          'находка для ценителей итальянской кухни. Паста пропитана сочными и '
          'насыщенными вкусами, которые оставят вас в восторге.'),
  NewDish(
      dishId: '7',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: false,
      title: "Паста с тунцом",
      price: 1000,
      image: ImagePass.pasta2,
      count: 0,
      text: 'В Италии не принято посыпать тертым пармезаном пасту с рыбой '
          'или морепродуктами, но если очень хочется, я не вижу причин этого '
          'себе не позволить.'),
  NewDish(
      dishId: '8',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: false,
      title: "Суп с морепродуктами",
      price: 1250,
      image: ImagePass.soup,
      count: 0,
      text: 'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
          'суп на основе креветочного бульона(биск), белая рыба '
          'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
  NewDish(
      dishId: '9',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: false,
      title: "Итальянская Питцца",
      price: 1200,
      image: ImagePass.piza2,
      count: 0,
      text: 'Главная особенность итальянской пиццы - тонкое тесто.'
          'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
          'Оно должно получиться мягким и эластичным, чтобы без труда можно '
          'было раскатать лепешки'),
  NewDish(
      dishId: '10',
      isRecommended: false,
      isFavorites: false,
      isTheBest: false,
      isPopular: true,
      title: "Паска с креветками",
      price: 1000,
      image: ImagePass.pasta1,
      count: 0,
      text:
          'Паста Паста с креветками и брокколи – это настоящая гастрономическая'
          'находка для ценителей итальянской кухни. Паста пропитана сочными и '
          'насыщенными вкусами, которые оставят вас в восторге.'),
  NewDish(
      dishId: '11',
      isRecommended: true,
      isFavorites: false,
      isTheBest: false,
      isPopular: true,
      title: "Паста с тунцом",
      price: 1000,
      image: ImagePass.pasta2,
      count: 0,
      text: 'В Италии не принято посыпать тертым пармезаном пасту с рыбой '
          'или морепродуктами, но если очень хочется, я не вижу причин этого '
          'себе не позволить.'),
  NewDish(
      dishId: '12',
      isRecommended: false,
      isFavorites: false,
      isTheBest: false,
      isPopular: true,
      title: "Суп с морепродуктами",
      price: 1250,
      image: ImagePass.soup,
      count: 0,
      text: 'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
          'суп на основе креветочного бульона(биск), белая рыба '
          'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
  NewDish(
      dishId: '13',
      isRecommended: false,
      isFavorites: false,
      isTheBest: false,
      isPopular: true,
      title: "Итальянская Питцца",
      price: 999,
      image: ImagePass.piza2,
      count: 0,
      text: 'Главная особенность итальянской пиццы - тонкое тесто.'
          'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
          'Оно должно получиться мягким и эластичным, чтобы без труда можно '
          'было раскатать тонкие лепешки'),
  NewDish(
      dishId: '14',
      isRecommended: false,
      isFavorites: false,
      isTheBest: false,
      isPopular: true,
      title: "Сет Королевский",
      price: 1280,
      image: ImagePass.sushi,
      count: 0,
      text:
          'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
          'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
  NewDish(
      dishId: '15',
      isRecommended: false,
      isFavorites: false,
      isTheBest: false,
      isPopular: true,
      title: "Пицца Маргарита",
      price: 680,
      image: ImagePass.piza,
      count: 0,
      text:
          'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
          'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
          'отведать популярное блюдо бедняков – пиццу и специально для этого '
          'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
  NewDish(
      dishId: '16',
      isRecommended: false,
      isFavorites: false,
      isTheBest: false,
      isPopular: true,
      title: "Паска с креветками",
      price: 1000,
      image: ImagePass.pasta1,
      count: 0,
      text:
          'Паста Паста с креветками и брокколи – это настоящая гастрономическая'
          'находка для ценителей итальянской кухни. Паста пропитана сочными и '
          'насыщенными вкусами, которые оставят вас в восторге.'),
  NewDish(
      dishId: '17',
      isRecommended: false,
      isFavorites: false,
      isTheBest: true,
      isPopular: false,
      title: "Суп с морепродуктами",
      price: 1250,
      image: ImagePass.soup,
      count: 0,
      text: 'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
          'суп на основе креветочного бульона(биск), белая рыба '
          'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
  NewDish(
      dishId: '18',
      isRecommended: false,
      isFavorites: false,
      isTheBest: true,
      isPopular: false,
      title: "Итальянская Питцца",
      price: 1000,
      image: ImagePass.piza2,
      count: 0,
      text: 'Главная особенность итальянской пиццы - тонкое тесто.'
          'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
          'Оно должно получиться мягким и эластичным, чтобы без труда можно '
          'было раскатать тонкие лепешки'),
  NewDish(
      dishId: '19',
      isRecommended: false,
      isFavorites: false,
      isTheBest: true,
      isPopular: false,
      title: "Сет Королевский",
      price: 1280,
      image: ImagePass.sushi,
      count: 0,
      text:
          'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
          'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
  NewDish(
      dishId: '20',
      isRecommended: false,
      isFavorites: true,
      isTheBest: false,
      isPopular: false,
      title: "Пицца Маргарита",
      price: 680,
      image: ImagePass.piza,
      count: 0,
      text:
          'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
          'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
          'отведать популярное блюдо бедняков – пиццу и специально для этого '
          'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
  NewDish(
      dishId: '21',
      isRecommended: false,
      isFavorites: false,
      isTheBest: true,
      isPopular: false,
      title: "Суп с морепродуктами",
      price: 1250,
      image: ImagePass.soup,
      count: 0,
      text: 'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
          'суп на основе креветочного бульона(биск), белая рыба '
          'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
  NewDish(
      dishId: '22',
      isRecommended: false,
      isFavorites: true,
      isTheBest: false,
      isPopular: false,
      title: "Итальянская Питцца",
      price: 1390,
      image: ImagePass.piza2,
      count: 0,
      text: 'Главная особенность итальянской пиццы - тонкое тесто.'
          'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
          'Оно должно получиться мягким и эластичным, чтобы без труда можно '
          'было раскатать тонкие лепешки'),
  NewDish(
      dishId: '23',
      isRecommended: false,
      isFavorites: true,
      isTheBest: false,
      isPopular: false,
      title: "Сет Королевский",
      price: 1280,
      image: ImagePass.sushi,
      count: 0,
      text:
          'Филадельфия, Карелия, Филадельфия с тунцом, Калифорния со снежным крабом, '
          'запеченные спайси с лососем, темпура угорь, темпура Филадельфия, запеченные с креветкой'),
  NewDish(
      dishId: '24',
      isRecommended: false,
      isFavorites: true,
      isTheBest: false,
      isPopular: false,
      title: "Пицца Маргарита",
      price: 680,
      image: ImagePass.piza,
      count: 0,
      text:
          'Самая известная итальянская пицца, названная в честь королевы Маргариты, '
          'супруги короля Умберто Первого. В 1889 году королева изъявила желание '
          'отведать популярное блюдо бедняков – пиццу и специально для этого '
          'события была приготовлена пицца окрашенная в цвета итальянского флага. '),
  NewDish(
      dishId: '25',
      isRecommended: false,
      isFavorites: true,
      isTheBest: false,
      isPopular: false,
      title: "Суп с морепродуктами",
      price: 1250,
      image: ImagePass.soup,
      count: 0,
      text: 'Кальмары, креветки, немного перца Чили, томаты, тимьян, чеснок, '
          'суп на основе креветочного бульона(биск), белая рыба '
          'греческая, КОРНЕПЛОДЫ. кинза. перед подачей добавляется узо.'),
  NewDish(
      dishId: '26',
      isRecommended: false,
      isFavorites: true,
      isTheBest: false,
      isPopular: false,
      title: "Итальянская Питцца",
      price: 650,
      image: ImagePass.piza2,
      count: 0,
      text: 'Главная особенность итальянской пиццы - тонкое тесто.'
          'Тесто готовится из муки, воды, дрожжей и соли и оливкового масла.'
          'Оно должно получиться мягким и эластичным, чтобы без труда можно '
          'было раскатать тонкие лепешки'),
];
