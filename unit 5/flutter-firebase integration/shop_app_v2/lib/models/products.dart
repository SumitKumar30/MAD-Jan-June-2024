class Products {
  late String id;
  late String name;
  late String price;
  late String photo;
  late String description;
  late String quantity;

  Products(
      {required this.id,
      required this.name,
      required this.price,
      required this.photo,
      required this.description,
      required this.quantity});

  // Convert Product object to a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'photo': photo,
      'description': description,
      'quantity': quantity,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        price: map['price'] ?? 0.0,
        photo: map['photoUrl'] ?? '',
        description: map['description'] ?? '',
        quantity: map['quantity'] ?? 0);
  }
}
