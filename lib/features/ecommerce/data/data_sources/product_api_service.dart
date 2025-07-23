import 'dart:math';

import 'package:varosha_app/features/ecommerce/data/model/product_model.dart';

class ProductApiService {
  static const List<String> _availableCategories = [
    'Electronics',
    'Clothing',
    'Books',
    'Home & Garden',
    'Sports',
    'Toys',
  ];

  // Mock product data
  final List<ProductModel> _mockProducts = List.generate(
    100,
    (index) => ProductModel(
      id: index + 1,
      name: 'Product ${index + 1}',
      description: 'This is a detailed description for product ${index + 1}',
      price: (Random().nextDouble() * 1000).roundToDouble(),
      imageUrl: 'https://picsum.photos/200?random=$index',
      categories: _getRandomCategories(),
    ),
  );

  static List<String> _getRandomCategories() {
    final random = Random();
    final numCategories = random.nextInt(3) + 1; // 1 to 3 categories
    final selectedCategories = <String>[];

    while (selectedCategories.length < numCategories) {
      final category =
          _availableCategories[random.nextInt(_availableCategories.length)];
      if (!selectedCategories.contains(category)) {
        selectedCategories.add(category);
      }
    }

    return selectedCategories;
  }

  /// Simulates an API call to fetch products with pagination and search
  Future<List<ProductModel>> getProducts({
    required int page,
    required int limit,
    String? searchQuery,
    String? category,
  }) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));

    var filteredProducts = _mockProducts;

    // Apply search filter
    if (searchQuery != null && searchQuery.isNotEmpty) {
      filteredProducts = filteredProducts.where((product) {
        return product.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
            product.description
                .toLowerCase()
                .contains(searchQuery.toLowerCase());
      }).toList();
    }

    // Apply category filter
    if (category != null && category.isNotEmpty) {
      filteredProducts = filteredProducts
          .where((product) => product.categories.contains(category))
          .toList();
    }

    // Calculate pagination
    final startIndex = (page - 1) * limit;
    final endIndex = min(startIndex + limit, filteredProducts.length);

    // Check if we have reached the end
    if (startIndex >= filteredProducts.length) {
      return [];
    }

    return filteredProducts.sublist(startIndex, endIndex);
  }

  /// Gets all available categories
  Future<List<String>> getCategories() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _availableCategories;
  }
}
