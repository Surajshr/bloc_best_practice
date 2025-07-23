import 'package:varosha_app/features/todo/data/data_sources/todo_local_data_repo.dart';
import 'package:varosha_app/features/todo/data/model/todo_model.dart';
import 'package:varosha_app/features/todo/domain/entities/todo_entity.dart';
import 'package:varosha_app/features/todo/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoLocalDataSource _localDataSource;

  TodoRepositoryImpl(this._localDataSource);

  @override
  Future<List<TodoEntity>> getTodos() async {
    final todos = await _localDataSource.getTodos();
    return todos;
  }

  @override
  Future<void> addTodo(TodoEntity todo) async {
    final todoModel = TodoModel.fromEntity(todo);
    await _localDataSource.addTodo(todoModel);
  }

  @override
  Future<void> updateTodo(TodoEntity todo) async {
    final todoModel = TodoModel.fromEntity(todo);
    await _localDataSource.updateTodo(todoModel);
  }

  @override
  Future<void> deleteTodo(String id) async {
    await _localDataSource.deleteTodo(id);
  }
}
