class Product {
  String name;
  String description;
  int price;
  int minQuantity;
  int starts;

  Product.fromFromJson(Map<String, dynamic> data) {
    this.name = data['name'];
    this.description = data['description'];
    this.price = data['price'];
    this.minQuantity = data['quantity'];
  }
}
