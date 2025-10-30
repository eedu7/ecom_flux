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
        image:
            "https://images.unsplash.com/photo-1580331451062-99ff652288d7?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
        price: 39.99,
      ),
      Product(
        id: '2',
        title: 'Long Sleeve Dress',
        image:
            'https://images.unsplash.com/photo-1609357605129-26f69add5d6e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bG9uZyUyMGRyZXNzfGVufDB8fDB8fHww&auto=format&fit=crop&q=60&w=500',
        price: 45.0,
      ),
      Product(
        id: '3',
        title: 'Sportswear Set',
        image:
            'https://images.unsplash.com/photo-1742210591800-7705b53b29e7?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTV8fHNwb3J0c3dlYXIlMjB3b21lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&q=60&w=500',
        price: 80.0,
      ),
    ];
  }
}
