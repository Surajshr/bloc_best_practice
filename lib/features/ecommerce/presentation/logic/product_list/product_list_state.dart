part of 'product_list_bloc.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState({
    @Default([]) List<ProductEntity> products,
    @Default([]) List<String> categories,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool hasReachedEnd,
    @Default(1) int currentPage,
    String? selectedCategory,
    String? searchQuery,
    String? errorMessage,
  }) = _ProductListState;
}
