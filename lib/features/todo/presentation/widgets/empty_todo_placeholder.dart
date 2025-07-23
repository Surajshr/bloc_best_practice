import 'package:varosha_app/core/imports/ui_imports.dart';

class EmptyTodoPlaceholder extends StatelessWidget {
  const EmptyTodoPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.list_alt,
            size: 64.r,
            color: Colors.grey,
          ),
          16.verticalSpace,
          Text(
            'No todos yet',
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.grey,
            ),
          ),
          8.verticalSpace,
          Text(
            'Add a new todo to get started',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
