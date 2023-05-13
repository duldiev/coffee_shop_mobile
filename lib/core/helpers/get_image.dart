class GetImage {
  static String get(String path) {
    final fileName = path.substring(path.length - 5, path.length);
    return '/Users/raiymbekduldiyev/Desktop/CoffeeManagementBackend/$fileName';
  }
}
