import 'package:varosha_app/features/nested_navigation/domain/entities/navigation_item_entity.dart';

class NavigationItemModel extends NavigationItemEntity {
  const NavigationItemModel({
    required super.index,
    required super.title,
    required super.icon,
    super.isSelected,
  });

  NavigationItemModel copyWith({
    int? index,
    String? title,
    String? icon,
    bool? isSelected,
  }) {
    return NavigationItemModel(
      index: index ?? this.index,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
