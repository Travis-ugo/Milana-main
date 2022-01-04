import 'data.dart';

//final Data telegram = Data(
final Profile prof = Profile(
  image: 'assets/image.JPG',
  name: 'Travis Okonicha',
  email: 'Okonicha.ugo@gmail.com',
);
List<Menu> menu = [
  Menu(filter: 'Coats', onScreen: true),
  Menu(filter: 'Dresses', onScreen: false),
  Menu(filter: 'Jersey', onScreen: false),
  Menu(filter: 'Pants', onScreen: false),
];

List<Items> falcon = [
  Items(
    image: 'assets/ellesse.jpg',
    price: r'$400',
    description: 'black and brown hoodie imported from china for sale',
    name: 'Ellese',
    id: '',
  ),
  Items(
    image: 'assets/jack24.jpg',
    price: r'$650',
    description: 'jack24 hot sauce most searched hoodie',
    name: 'Jack 24',
    id: '',
  ),
  Items(
    image: 'assets/jacket101.jpg',
    price: '700',
    description: 'jack101 the future of koroban hoodie and looks',
    name: 'Jacket101',
    id: '',
  ),
  Items(
    image: 'assets/snowjack.jpg',
    price: "1200",
    description: 'grey and black hoodie hoolo',
    name: 'Snowjack',
    id: '',
  ),
  Items(
    image: 'assets/whitejacket.jpg',
    price: '730',
    description: 'whitejack force designed in UK and shipped',
    name: 'Whitejack',
    id: '',
  ),
  Items(
    image: 'assets/jacket212.jpg',
    price: '500',
    description:
        'jacket212 has an explicite and daangerous weapon hidden ubder its hoodie',
    name: 'Jacket212',
    id: '',
  ),
];
