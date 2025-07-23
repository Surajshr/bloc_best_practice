import 'package:varosha_app/features/todo/domain/repository/todo_repository.dart';

class DeleteTodo {
  final TodoRepository _repository;

  DeleteTodo(this._repository);

  Future<void> call(String id) async {
    await _repository.deleteTodo(id);
  }
}
