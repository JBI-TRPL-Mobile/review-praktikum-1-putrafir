class Cart {
  final List<Map<String, String>> items = [];
  void addToCart(Map<String, String> product) {
    items.add(product);
  }

  List<Map<String, String>> getItems() {
    return items;
  }
}

final Cart cart = Cart();
