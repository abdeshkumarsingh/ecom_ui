import 'package:flutter/widgets.dart';
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

  static const List<dynamic> categories = [
    {
      'image':
          'https://static.vecteezy.com/system/resources/thumbnails/041/944/038/small/ai-generated-fresh-summer-fruits-with-apple-grapes-berries-pear-and-apricot-on-transparent-background-png.png',
      'title': 'Fruits',
      'color': '0xff73a1eb',
    },
    {
      'image':
          'https://static.vecteezy.com/system/resources/thumbnails/044/771/696/small_2x/a-basket-brimming-with-vegetables-free-png.png',
      'title': 'Vegetables',
      'color': '0xffeb7b73',
    },
    {
      'image':
          'https://static.vecteezy.com/system/resources/previews/045/933/288/non_2x/milk-bottle-isolation-diverse-stock-options-free-png.png',
      'title': 'Dairy',
      'color': '0xffebdf73',
    },
    {
      'image':
          'https://static.vecteezy.com/system/resources/previews/026/860/319/non_2x/fresh-raw-tasty-meat-steak-cow-fly-vegetables-health-food-isolated-on-transparent-background-png.png',
      'title': 'Meat',
      'color': '0xffcd73eb',
    },
    {
      'image':
          'https://static.vecteezy.com/system/resources/thumbnails/020/943/798/small/fresh-nile-tilapia-or-pla-nin-in-thai-freshwater-fish-isolated-with-clipping-path-in-file-format-png.png',
      'title': 'Fish',
      'color': '0xff738beb',
    },
    {
      'image':
          'https://static.vecteezy.com/system/resources/previews/010/262/791/non_2x/snack-3d-illustration-icon-png.png',
      'title': 'Snacks',
      'color': '0xff73ebe7',
    },
    {
      'image':
          'https://static.vecteezy.com/system/resources/thumbnails/047/429/595/small_2x/refreshing-glass-of-cola-with-ice-cubes-splashing-out-perfect-for-representing-a-cool-beverage-or-drink-advertisement-png.png',
      'title': 'Beverages',
      'color': '0xff73eb9d',
    },
    {
      'image':
          'https://static.vecteezy.com/system/resources/previews/035/320/532/non_2x/ai-generated-bread-in-basket-isolated-on-transparent-background-free-png.png',
      'title': 'Bakery',
      'color': '0xffc1eb73',
    },
  ];


  static const List<dynamic> beverages = [
    {
      "image":
          "https://static.vecteezy.com/system/resources/thumbnails/047/429/595/small_2x/refreshing-glass-of-cola-with-ice-cubes-splashing-out-perfect-for-representing-a-cool-beverage-or-drink-advertisement-png.png",
      "title": "Diet Coke",
      "description": "300ml, price",
      "price": "1.99",
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
          "https://static.vecteezy.com/system/resources/previews/054/314/915/non_2x/sprite-can-on-transparent-background-free-png.png",
      "title": "Sprite Can",
      "description": "400ml, price",
      "price": "2.99",
      "details":
          "Bananas are soft, sweet fruits full of potassium, vitamin B6, and natural sugars. They provide quick energy, support muscle function, and help maintain healthy digestion. Great for breakfast or a pre-workout snack.",
      "images": [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjKqVdb51IgOemeYkpEWoU8wPG8Xorhzc_JePDdUpL7mG6d4JMQ55Ud5Y8MdTYinRTf5A&usqp=CAU",
        "https://purepng.com/public/uploads/large/three-bananas-uv1.png",
      ],
    },
    {
      "image": "https://static.vecteezy.com/system/resources/thumbnails/041/289/656/small/ai-generated-fresh-apple-juice-isolated-on-transparent-background-png.png",
      "title": "Apple Juice",
      "description": "500ml, price",
      "price": "4.55",
      "details":
          "Oranges are juicy citrus fruits packed with vitamin C and antioxidants. They help boost the immune system, improve skin health, and keep you hydrated. Their refreshing taste makes them ideal for snacks or juices.",
      "images": [
        "https://pngimg.com/uploads/orange/orange_PNG791.png",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTfJjb8uIHXtVo5iw-t4-6WwXK95d_yYC2qqSgs_83uoNKYF4M0WWyWHLvaRvaIIgSg7I&usqp=CAU",
      ],
    },
    {
      "image":
          "https://static.vecteezy.com/system/resources/thumbnails/044/632/999/small/refreshing-orangy-bliss-enjoy-a-glass-of-orange-juice-with-fresh-orange-slices-free-png.png",
      "title": "Orange Juice",
      "description": "1L, price",
      "price": "7.99",
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
          "https://static.vecteezy.com/system/resources/previews/036/573/453/non_2x/a-can-of-coca-cola-drink-isolated-free-png.png",
      "title": "Coca Cola can",
      "description": "2L, price",
      "price": "9.99",
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
          "https://static.vecteezy.com/system/resources/previews/054/314/810/non_2x/aluminium-can-of-pepsi-cola-free-png.png",
      "title": "Pepsi Can",
      "description": "300ml, price",
      "price": "1.99",
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
          "https://static.vecteezy.com/system/resources/previews/054/314/871/non_2x/fanta-can-isolated-on-transparent-background-free-png.png",
      "title": "Fanta Can",
      "description": "300ml, price",
      "price": "2.99",
      "details":
          "Apples are crisp, juicy fruits that are rich in fiber and vitamin C. They help improve digestion, support heart health, and may aid in weight loss. A perfect everyday snack that keeps you feeling full and refreshed.",
      "images": [
        "https://media.istockphoto.com/id/183422512/photo/fresh-red-apples-on-white-background.jpg?s=612x612&w=0&k=20&c=OmfmcQLh3mwp4pFVQn9Sr2U8VCyIgGtV6fuaDmd3Yrk=",
        "https://media.istockphoto.com/id/957511078/photo/ripe-red-apple-with-slice-and-leaves-isolated-on-white.jpg?s=612x612&w=0&k=20&c=RQuFLjrvKHOzBtnPUdzWWjUExnkMOByzdLA8u1in3x4=",
        "https://pngfre.com/wp-content/uploads/apple-poster.png",
      ],
    },
  ];

  static const List<dynamic> fruits = [
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
  ];
}
