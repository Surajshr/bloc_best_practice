import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:varosha_app/features/todo/data/data_sources/todo_local_data_repo.dart';
import 'package:varosha_app/features/todo/data/model/todo_model.dart';

class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  static Database? _database;
  static const String tableName = 'todos';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    print('todo dbPath ${dbPath}');
    final path = join(dbPath, 'todos.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $tableName(
            id TEXT PRIMARY KEY,
            title TEXT NOT NULL,
            description TEXT NOT NULL,
            isCompleted INTEGER NOT NULL,
            createdAt TEXT NOT NULL
          )
        ''');
      },
    );
  }

  @override
  Future<List<TodoModel>> getTodos() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(tableName);
    print('todo Saved data ${maps.toString()}');
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
    final db = await database;
    await db.insert(
      tableName,
      {
        'id': todo.id,
        'title': todo.title,
        'description': todo.description,
        'isCompleted': todo.isCompleted ? 1 : 0,
        'createdAt': todo.createdAt.toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> updateTodo(TodoModel todo) async {
    final db = await database;
    await db.update(
      tableName,
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
    final db = await database;
    await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
