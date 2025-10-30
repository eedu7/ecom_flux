class Product {
  final String id;
  final String title;
  final String image;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'image': image, 'price': price};
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      title: map['title'],
      image: map['image'],
      price: map['price'],
    );
  }
}

class ProductService {
  Future<List<Product>> getFeaturesProducts() async {
    return [
      Product(
        id: '1',
        title: 'Turtleneck Sweater',
        image: "/assets/images/features/image_1.png",
        price: 39.99,
      ),
      Product(
        id: '2',
        title: 'Long Sleeve Dress',
        image: '/assets/images/features/image_2.png',
        price: 45.0,
      ),
      Product(
        id: '3',
        title: 'Sportswear Set',
        image: 'assets/images/features/image_3.png',
        price: 80.0,
      ),
    ];
  }
}
