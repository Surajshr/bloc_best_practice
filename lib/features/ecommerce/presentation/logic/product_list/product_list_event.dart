part of 'product_list_bloc.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.loadInitial() = _LoadInitial;
  const factory ProductListEvent.loadMore() = _LoadMore;
  const factory ProductListEvent.refresh() = _Refresh;
  const factory ProductListEvent.toggleFavorite(int productId) =
      _ToggleFavorite;
  const factory ProductListEvent.searchProducts(String query) = _SearchProducts;
  const factory ProductListEvent.filterByCategory(String? category) =
      _FilterByCategory;
}
