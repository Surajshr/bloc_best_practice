import 'package:varosha_app/features/todo/domain/entities/todo_entity.dart';
import 'package:varosha_app/features/todo/domain/repository/todo_repository.dart';

class UpdateTodo {
  final TodoRepository _repository;

  UpdateTodo(this._repository);

  Future<void> call(TodoEntity todo) async {
    await _repository.updateTodo(todo);
  }
}
