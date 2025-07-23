import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/features/todo/domain/entities/todo_entity.dart';

class TodoListTile extends StatelessWidget {
  final TodoEntity todo;
  final Function(bool) onToggle;
  final VoidCallback onDelete;

  const TodoListTile({
    super.key,
    required this.todo,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 8.h),
      child: ListTile(
        leading: Checkbox(
          value: todo.isCompleted,
          onChanged: (value) => onToggle(value ?? false),
        ),
        title: Text(
          todo.title,
          style: TextStyle(
            fontSize: 16.sp,
            decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(
          todo.description,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
