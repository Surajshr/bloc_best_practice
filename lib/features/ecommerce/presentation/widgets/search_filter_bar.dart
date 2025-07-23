import 'package:flutter/material.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/widgets/build_text.dart';

class SearchFilterBar extends StatelessWidget {
  final String? selectedCategory;
  final List<String> categories;
  final Function(String) onSearch;
  final Function(String?) onCategorySelected;

  const SearchFilterBar({
    super.key,
    required this.selectedCategory,
    required this.categories,
    required this.onSearch,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search bar
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.kBackgroundColor.withValues(alpha: 0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              onChanged: (value) => onSearch(value),
              decoration: InputDecoration(
                hintText: 'Search products...',
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.kTextDisabledColor,
                  size: 24.w,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        // Categories
        SizedBox(
          height: 40.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: categories.length + 1, // +1 for "All" option
            itemBuilder: (context, index) {
              // "All" category
              if (index == 0) {
                final isSelected = selectedCategory == null;
                return Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: FilterChip(
                    selected: isSelected,
                    label: BuildText(
                      text: 'All',
                      fontSize: 14.sp,
                      color: isSelected
                          ? AppColors.kWhiteColor
                          : AppColors.kTextColor,
                    ),
                    onSelected: (_) => onCategorySelected(null),
                    backgroundColor: isSelected
                        ? AppColors.kPrimaryColor
                        : AppColors.kWhiteColor,
                  ),
                );
              }

              final category = categories[index - 1];
              final isSelected = category == selectedCategory;

              return Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: FilterChip(
                  selected: isSelected,
                  label: BuildText(
                    text: category,
                    fontSize: 14.sp,
                    color: isSelected
                        ? AppColors.kWhiteColor
                        : AppColors.kTextColor,
                    maxLines: 1,
                  ),
                  onSelected: (_) => onCategorySelected(category),
                  backgroundColor: isSelected
                      ? AppColors.kPrimaryColor
                      : AppColors.kWhiteColor,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
