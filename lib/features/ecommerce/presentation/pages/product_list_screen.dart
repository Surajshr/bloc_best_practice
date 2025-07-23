import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/features/ecommerce/presentation/logic/product_list/product_list_bloc.dart';
import 'package:varosha_app/features/ecommerce/presentation/widgets/product_card.dart';
import 'package:varosha_app/features/ecommerce/presentation/widgets/search_filter_bar.dart';
import 'package:varosha_app/widgets/build_text.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<ProductListBloc>().add(const ProductListEvent.loadInitial());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<ProductListBloc>().add(const ProductListEvent.loadMore());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    // Load more when reaching 80% of the scroll
    return currentScroll >= (maxScroll * 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildText(
          text: 'Products',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocBuilder<ProductListBloc, ProductListState>(
        builder: (context, state) {
          if (state.isLoading && state.products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.hasError && state.products.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildText(
                    text: state.errorMessage ?? 'Something went wrong',
                    fontSize: 16,
                    color: Colors.red,
                  ),
                  SizedBox(height: 16.h),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<ProductListBloc>()
                          .add(const ProductListEvent.refresh());
                    },
                    child: const BuildText(
                      text: 'Retry',
                      fontSize: 14,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              context
                  .read<ProductListBloc>()
                  .add(const ProductListEvent.refresh());
            },
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                // Search and Filter Bar
                SliverToBoxAdapter(
                  child: SearchFilterBar(
                    selectedCategory: state.selectedCategory,
                    categories: state.categories,
                    onSearch: (query) {
                      context
                          .read<ProductListBloc>()
                          .add(ProductListEvent.searchProducts(query));
                    },
                    onCategorySelected: (category) {
                      context
                          .read<ProductListBloc>()
                          .add(ProductListEvent.filterByCategory(category));
                    },
                  ),
                ),
                // Products Grid
                SliverPadding(
                  padding: EdgeInsets.all(16.w),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.w,
                      childAspectRatio: 0.70,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final product = state.products[index];
                        return ProductCard(
                          product: product,
                          onFavoritePressed: () {
                            context.read<ProductListBloc>().add(
                                ProductListEvent.toggleFavorite(product.id));
                          },
                        );
                      },
                      childCount: state.products.length,
                    ),
                  ),
                ),
                // Loading Indicator
                if (state.isLoading && state.products.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(16.w),
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                // End of List Indicator
                if (state.hasReachedEnd && state.products.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(16.w),
                      child: const BuildText(
                        text: 'No more products',
                        fontSize: 14,
                        color: Colors.grey,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
