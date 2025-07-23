import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:varosha_app/features/ecommerce/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
    required List<String> categories,
    @Default(false) bool isFavorite,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.fromEntity(ProductEntity entity) {
    return ProductModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      imageUrl: entity.imageUrl,
      categories: entity.categories,
      isFavorite: entity.isFavorite,
    );
  }

  const ProductModel._();

  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      name: name,
      description: description,
      price: price,
      imageUrl: imageUrl,
      categories: categories,
      isFavorite: isFavorite,
    );
  }
}
