import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:varosha_app/features/todo/data/data_sources/todo_local_data_repo.dart';
import 'package:varosha_app/features/todo/data/data_sources/todo_local_datasource.dart';
import 'package:varosha_app/features/todo/data/repository_impl/todo_repository_impl.dart';
import 'package:varosha_app/features/todo/domain/repository/todo_repository.dart';
import 'package:varosha_app/features/todo/domain/usecases/add_todo.dart';
import 'package:varosha_app/features/todo/domain/usecases/delete_todo.dart';
import 'package:varosha_app/features/todo/domain/usecases/get_todos.dart';
import 'package:varosha_app/features/todo/domain/usecases/update_todo.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // Initialize SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  // Register Todo Local Data Source
  getIt.registerSingleton<TodoLocalDataSource>(TodoLocalDataSourceImpl());
  getIt.registerSingleton<TodoRepository>(
      TodoRepositoryImpl(getIt<TodoLocalDataSource>()));
  // Use Cases
  getIt.registerLazySingleton(() => GetTodos(getIt<TodoRepository>()));
  getIt.registerLazySingleton(() => AddTodo(getIt<TodoRepository>()));
  getIt.registerLazySingleton(() => UpdateTodo(getIt<TodoRepository>()));
  getIt.registerLazySingleton(() => DeleteTodo(getIt<TodoRepository>()));
}
