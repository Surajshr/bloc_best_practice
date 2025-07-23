import 'package:varosha_app/features/ecommerce/data/data_sources/product_api_service.dart';
import 'package:varosha_app/features/ecommerce/data/data_sources/product_local_datasource.dart';
import 'package:varosha_app/features/ecommerce/domain/entities/product_entity.dart';
import 'package:varosha_app/features/ecommerce/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductApiService _apiService;
  final ProductLocalDataSource _localDataSource;

  ProductRepositoryImpl({
    required ProductApiService apiService,
    required ProductLocalDataSource localDataSource,
  })  : _apiService = apiService,
        _localDataSource = localDataSource;

  @override
  Future<List<ProductEntity>> getProducts({
    required int page,
    required int limit,
    String? searchQuery,
    String? category,
  }) async {
    final products = await _apiService.getProducts(
      page: page,
      limit: limit,
      searchQuery: searchQuery,
      category: category,
    );

    // Get favorite status for each product
    final favoriteIds = await _localDataSource.getFavoriteProductIds();

    // Convert to entities with favorite status
    return products.map((product) {
      return product.toEntity().copyWith(
            isFavorite: favoriteIds.contains(product.id),
          );
    }).toList();
  }

  @override
  Future<void> toggleFavorite(int productId) {
    return _localDataSource.toggleFavorite(productId);
  }

  @override
  Future<List<int>> getFavoriteProductIds() {
    return _localDataSource.getFavoriteProductIds();
  }

  @override
  Future<bool> isFavorite(int productId) {
    return _localDataSource.isFavorite(productId);
  }
}
