import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:varosha_app/core/di/di.dart';
import 'package:varosha_app/features/ecommerce/domain/entities/product_entity.dart';
import 'package:varosha_app/features/ecommerce/domain/usecases/get_products.dart';
import 'package:varosha_app/features/ecommerce/domain/usecases/toggle_favorite.dart';
part 'product_list_event.dart';
part 'product_list_state.dart';

part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final GetProducts _getProducts = getIt<GetProducts>();
  final ToggleFavorite _toggleFavorite = getIt<ToggleFavorite>();
  static const int _pageSize = 20;

  ProductListBloc() : super(const ProductListState()) {
    on<_LoadInitial>(_onLoadInitial);
    on<_LoadMore>(_onLoadMore);
    on<_Refresh>(_onRefresh);
    on<_ToggleFavorite>(_onToggleFavorite);
    on<_SearchProducts>(_onSearchProducts);
    on<_FilterByCategory>(_onFilterByCategory);
  }

  Future<void> _onLoadInitial(
      _LoadInitial event, Emitter<ProductListState> emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));

    try {
      final products = await _getProducts(
        GetProductsParams(
          page: 1,
          limit: _pageSize,
          searchQuery: state.searchQuery,
          category: state.selectedCategory,
        ),
      );

      emit(
        state.copyWith(
          products: products,
          isLoading: false,
          currentPage: 1,
          hasReachedEnd: products.length < _pageSize,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onLoadMore(
      _LoadMore event, Emitter<ProductListState> emit) async {
    if (state.isLoading || state.hasReachedEnd) return;

    emit(state.copyWith(isLoading: true));

    try {
      final nextPage = state.currentPage + 1;
      final newProducts = await _getProducts(
        GetProductsParams(
          page: nextPage,
          limit: _pageSize,
          searchQuery: state.searchQuery,
          category: state.selectedCategory,
        ),
      );

      if (newProducts.isEmpty) {
        emit(state.copyWith(
          isLoading: false,
          hasReachedEnd: true,
        ));
        return;
      }

      emit(
        state.copyWith(
          products: [...state.products, ...newProducts],
          currentPage: nextPage,
          isLoading: false,
          hasReachedEnd: newProducts.length < _pageSize,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onRefresh(
      _Refresh event, Emitter<ProductListState> emit) async {
    emit(state.copyWith(
      currentPage: 1,
      hasReachedEnd: false,
      hasError: false,
      errorMessage: null,
    ));
    add(const ProductListEvent.loadInitial());
  }

  Future<void> _onToggleFavorite(
      _ToggleFavorite event, Emitter<ProductListState> emit) async {
    try {
      await _toggleFavorite(event.productId);

      // Update the product in the list
      final updatedProducts = state.products.map((product) {
        if (product.id == event.productId) {
          return product.copyWith(isFavorite: !product.isFavorite);
        }
        return product;
      }).toList();

      emit(state.copyWith(products: updatedProducts));
    } catch (e) {
      emit(state.copyWith(
        hasError: true,
        errorMessage: 'Failed to update favorite status',
      ));
    }
  }

  Future<void> _onSearchProducts(
      _SearchProducts event, Emitter<ProductListState> emit) async {
    emit(state.copyWith(
      searchQuery: event.query,
      currentPage: 1,
      hasReachedEnd: false,
    ));
    add(const ProductListEvent.loadInitial());
  }

  Future<void> _onFilterByCategory(
      _FilterByCategory event, Emitter<ProductListState> emit) async {
    emit(state.copyWith(
      selectedCategory: event.category,
      currentPage: 1,
      hasReachedEnd: false,
    ));
    add(const ProductListEvent.loadInitial());
  }
}
