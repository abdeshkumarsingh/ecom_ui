class ProductModel {
  final String image;
  final String title;
  final String description;
  final String price;
  final List<String> images;
  final String details;

  ProductModel({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.images,
    required this.details,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      image: json['image'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? '',
      images: List<String>.from(json['images'] ?? []),
      details: json['details'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'description': description,
      'price': price,
      'images': images,
      'details': details,
    };
  }
}
