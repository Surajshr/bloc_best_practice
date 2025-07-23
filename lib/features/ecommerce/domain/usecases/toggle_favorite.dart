import 'package:varosha_app/features/ecommerce/domain/repository/product_repository.dart';

class ToggleFavorite {
  final ProductRepository _repository;

  ToggleFavorite(this._repository);

  Future<void> call(int productId) {
    return _repository.toggleFavorite(productId);
  }
}
