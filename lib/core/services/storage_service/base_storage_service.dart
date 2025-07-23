import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseStorageService {
  static Database? _database;
  final String tableName;
  final String databaseName;
  final String createTableQuery;

  BaseStorageService({
    required this.tableName,
    required this.databaseName,
    required this.createTableQuery,
  });

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, databaseName);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(createTableQuery);
      },
    );
  }

  Future<List<Map<String, dynamic>>> getAll() async {
    final db = await database;
    return await db.query(tableName);
  }

  Future<void> insert(Map<String, dynamic> data) async {
    final db = await database;
    await db.insert(
      tableName,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> update(
    Map<String, dynamic> data, {
    required String where,
    required List<dynamic> whereArgs,
  }) async {
    final db = await database;
    await db.update(
      tableName,
      data,
      where: where,
      whereArgs: whereArgs,
    );
  }

  Future<void> delete({
    required String where,
    required List<dynamic> whereArgs,
  }) async {
    final db = await database;
    await db.delete(
      tableName,
      where: where,
      whereArgs: whereArgs,
    );
  }

  Future<List<Map<String, dynamic>>> query({
    String? where,
    List<dynamic>? whereArgs,
  }) async {
    final db = await database;
    return await db.query(
      tableName,
      where: where,
      whereArgs: whereArgs,
    );
  }
}
