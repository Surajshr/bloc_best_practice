import 'package:varosha_app/features/ecommerce/domain/entities/product_entity.dart';
import 'package:varosha_app/features/ecommerce/domain/repository/product_repository.dart';

class GetProductsParams {
  final int page;
  final int limit;
  final String? searchQuery;
  final String? category;

  const GetProductsParams({
    required this.page,
    required this.limit,
    this.searchQuery,
    this.category,
  });
}

class GetProducts {
  final ProductRepository _repository;

  GetProducts(this._repository);

  Future<List<ProductEntity>> call(GetProductsParams params) {
    return _repository.getProducts(
      page: params.page,
      limit: params.limit,
      searchQuery: params.searchQuery,
      category: params.category,
    );
  }
}
