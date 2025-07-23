import 'package:varosha_app/features/ecommerce/domain/entities/product_entity.dart';

abstract class ProductRepository {
  /// Fetches a paginated list of products
  /// [page] is 1-based index
  /// [limit] is the number of items per page
  Future<List<ProductEntity>> getProducts({
    required int page,
    required int limit,
    String? searchQuery,
    String? category,
  });

  /// Toggles the favorite status of a product
  Future<void> toggleFavorite(int productId);

  /// Gets all favorite product IDs
  Future<List<int>> getFavoriteProductIds();

  /// Checks if a product is favorited
  Future<bool> isFavorite(int productId);
}
