import 'package:groceries_app/config/images/images.dart';

class ProductList {
  static const List<dynamic> exclusive = [
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
      "title": "Organic Banana",
      "description": "7pcs, priceg",
      "price": "2.99",
      "images": [
        "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
      ],
    },
    {
      "image":
          "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
      "title": "Organic Banana",
      "description": "7pcs, priceg",
      "price": "2.99",
      "images": [
        "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
      ],
    },
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
      "title": "Organic Banana",
      "description": "7pcs, priceg",
      "price": "2.99",
      "images": [
        "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
      ],
    },
  ];

  static const List<dynamic> selling = [
    {
      'image': Images.google,
      'title': 'Organic Banana',
      'description': '7pcs, priceg',
      'price': '2.99',
      'imagges': [Images.facebook, Images.google],
    },
    {
      'image': Images.facebook,
      'title': 'Red Apple',
      'description': '1 kg, priceg',
      'price': '3.99',
      'imagges': [Images.facebook, Images.google],
    },
    {
      'image': Images.googleMap,
      'title': 'Juicy Orange',
      'description': '1 kg, priceg',
      'price': '4.99',
      'imagges': [Images.facebook, Images.google],
    },
  ];
}
