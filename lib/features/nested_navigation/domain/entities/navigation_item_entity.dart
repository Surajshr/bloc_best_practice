class NavigationItemEntity {
  final int index;
  final String title;
  final String icon;
  final bool isSelected;

  const NavigationItemEntity({
    required this.index,
    required this.title,
    required this.icon,
    this.isSelected = false,
  });
}
