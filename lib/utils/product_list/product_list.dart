import 'package:groceries_app/config/images/images.dart';

class ProductList {
  static const List<dynamic> exclusive = [
    {
      "image":
          "https://static.vecteezy.com/system/resources/thumbnails/023/290/773/small_2x/fresh-red-apple-isolated-on-transparent-background-generative-ai-png.png",
      "title": "Organic Apple",
      "description": "7pcs, priceg",
      "price": "2.99",
      "details":
          "Apples are crisp, juicy fruits that are rich in fiber and vitamin C. They help improve digestion, support heart health, and may aid in weight loss. A perfect everyday snack that keeps you feeling full and refreshed.",
      "images": [
        "https://media.istockphoto.com/id/183422512/photo/fresh-red-apples-on-white-background.jpg?s=612x612&w=0&k=20&c=OmfmcQLh3mwp4pFVQn9Sr2U8VCyIgGtV6fuaDmd3Yrk=",
        "https://media.istockphoto.com/id/957511078/photo/ripe-red-apple-with-slice-and-leaves-isolated-on-white.jpg?s=612x612&w=0&k=20&c=RQuFLjrvKHOzBtnPUdzWWjUExnkMOByzdLA8u1in3x4=",
        "https://pngfre.com/wp-content/uploads/apple-poster.png",
      ],
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjKqVdb51IgOemeYkpEWoU8wPG8Xorhzc_JePDdUpL7mG6d4JMQ55Ud5Y8MdTYinRTf5A&usqp=CAU",
      "title": "Organic Banana",
      "description": "7pcs, priceg",
      "price": "3.99",
      "details":
          "Bananas are soft, sweet fruits full of potassium, vitamin B6, and natural sugars. They provide quick energy, support muscle function, and help maintain healthy digestion. Great for breakfast or a pre-workout snack.",
      "images": [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjKqVdb51IgOemeYkpEWoU8wPG8Xorhzc_JePDdUpL7mG6d4JMQ55Ud5Y8MdTYinRTf5A&usqp=CAU",
        "https://purepng.com/public/uploads/large/three-bananas-uv1.png",
      ],
    },
    {
      "image": "https://pngimg.com/uploads/orange/orange_PNG791.png",
      "title": "Organic orange",
      "description": "7pcs, priceg",
      "price": "4.99",
      "details":
          "Oranges are juicy citrus fruits packed with vitamin C and antioxidants. They help boost the immune system, improve skin health, and keep you hydrated. Their refreshing taste makes them ideal for snacks or juices.",
      "images": [
        "https://pngimg.com/uploads/orange/orange_PNG791.png",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTfJjb8uIHXtVo5iw-t4-6WwXK95d_yYC2qqSgs_83uoNKYF4M0WWyWHLvaRvaIIgSg7I&usqp=CAU",
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
