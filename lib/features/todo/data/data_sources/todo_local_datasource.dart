import 'package:varosha_app/core/services/storage_service/base_storage_service.dart';
import 'package:varosha_app/features/todo/data/data_sources/todo_local_data_repo.dart';
import 'package:varosha_app/features/todo/data/model/todo_model.dart';

class TodoLocalDataSourceImpl extends BaseStorageService
    implements TodoLocalDataSource {
  static const String _tableName = 'todos';

  TodoLocalDataSourceImpl()
      : super(
          tableName: _tableName,
          databaseName: 'todos.db',
          createTableQuery: '''
            CREATE TABLE $_tableName(
              id TEXT PRIMARY KEY,
              title TEXT NOT NULL,
              description TEXT NOT NULL,
              isCompleted INTEGER NOT NULL,
              createdAt TEXT NOT NULL
            )
          ''',
        );

  @override
  Future<List<TodoModel>> getTodos() async {
    final maps = await getAll();
    return List.generate(maps.length, (i) {
      return TodoModel(
        id: maps[i]['id'] as String,
        title: maps[i]['title'] as String,
        description: maps[i]['description'] as String,
        isCompleted: maps[i]['isCompleted'] == 1,
        createdAt: DateTime.parse(maps[i]['createdAt'] as String),
      );
    });
  }

  @override
  Future<void> addTodo(TodoModel todo) async {
    await insert({
      'id': todo.id,
      'title': todo.title,
      'description': todo.description,
      'isCompleted': todo.isCompleted ? 1 : 0,
      'createdAt': todo.createdAt.toIso8601String(),
    });
  }

  @override
  Future<void> updateTodo(TodoModel todo) async {
    await update(
      {
        'title': todo.title,
        'description': todo.description,
        'isCompleted': todo.isCompleted ? 1 : 0,
        'createdAt': todo.createdAt.toIso8601String(),
      },
      where: 'id = ?',
      whereArgs: [todo.id],
    );
  }

  @override
  Future<void> deleteTodo(String id) async {
    await delete(
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
