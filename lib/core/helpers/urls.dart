class URLs {
  static String get baseUrl => 'http://127.0.0.1:8000';
  static String get auth => '/auth/jwt/create';
  static String get signUp => '/auth/users/';
  static String get getProductList => '/api/product';
  static String get getCart => '/api/cart';
  static String get addToCart => '/api/cart/item/';
  static String deleteItemCart(int id) => '/api/cart/item/$id/';

  static String get order => '/api/order/';
}
