class Profile {
  final String image;
  final String name;
  final String email;

  Profile({
    required this.image,
    required this.name,
    required this.email,
  });
}

class Menu {
  final String filter;
  final bool onScreen;

  Menu({
    required this.filter,
    required this.onScreen,
  });
}

class Items {
  final String image;
  final String description;
  final String price;
  final String name;
  final String id;
  final bool addToCart;

  Items({
    required this.image,
    required this.name,
    required this.id,
    required this.description,
    required this.price,
    this.addToCart = false,
  });
}
