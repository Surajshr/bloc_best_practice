import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/features/ecommerce/domain/entities/product_entity.dart';
import 'package:varosha_app/widgets/build_text.dart';

class ProductCard extends StatelessWidget {
  final ProductEntity product;
  final VoidCallback onFavoritePressed;

  const ProductCard({
    super.key,
    required this.product,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.kBackgroundColor.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with favorite button
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
                child: Image.network(
                  product.imageUrl,
                  height: 150.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 150.h,
                      color: AppColors.kBackgroundColor,
                      child: Icon(
                        Icons.image_not_supported,
                        color: AppColors.kTextDisabledColor,
                        size: 32.w,
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 8.h,
                right: 8.w,
                child: IconButton(
                  onPressed: onFavoritePressed,
                  icon: Icon(
                    product.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color:
                        product.isFavorite ? Colors.red : AppColors.kWhiteColor,
                  ),
                ),
              ),
            ],
          ),
          // Product details
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildText(
                  text: product.name,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kTextColor,
                  maxLines: 2,
                ),
                SizedBox(height: 4.h),
                BuildText(
                  text: product.description,
                  fontSize: 12.sp,
                  color: AppColors.kTextDisabledColor,
                  maxLines: 2,
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: BuildText(
                        text: '\$${product.price.toStringAsFixed(2)}',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                    // Categories
                    if (product.categories.isNotEmpty)
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color:
                                AppColors.kPrimaryColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: BuildText(
                            text: product.categories.first,
                            fontSize: 12.sp,
                            color: AppColors.kPrimaryColor,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
