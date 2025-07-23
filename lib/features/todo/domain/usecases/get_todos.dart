import 'package:varosha_app/features/todo/domain/entities/todo_entity.dart';
import 'package:varosha_app/features/todo/domain/repository/todo_repository.dart';

class GetTodos {
  final TodoRepository _repository;

  GetTodos(this._repository);

  Future<List<TodoEntity>> call() async {
    return await _repository.getTodos();
  }
}
