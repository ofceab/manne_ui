class Orders {
  String uid;
  List<Map<String, dynamic>> productsOrdered;

  Orders.fromJson(Map<String, dynamic> data) {
    this.uid = data['uid'];
    this.productsOrdered = data['products'];
  }
}
