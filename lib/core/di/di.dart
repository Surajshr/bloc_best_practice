import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:varosha_app/features/ecommerce/data/data_sources/product_api_service.dart';
import 'package:varosha_app/features/ecommerce/data/data_sources/product_local_datasource.dart';
import 'package:varosha_app/features/ecommerce/data/repository_impl/product_repository_impl.dart';
import 'package:varosha_app/features/ecommerce/domain/repository/product_repository.dart';
import 'package:varosha_app/features/ecommerce/domain/usecases/get_products.dart';
import 'package:varosha_app/features/ecommerce/domain/usecases/toggle_favorite.dart';
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

  // Register Product Local Data Source
  getIt.registerSingleton<ProductLocalDataSource>(ProductLocalDataSource());
  getIt.registerSingleton<ProductApiService>(ProductApiService());
  getIt.registerSingleton<ProductRepository>(ProductRepositoryImpl(
    apiService: getIt<ProductApiService>(),
    localDataSource: getIt<ProductLocalDataSource>(),
  ));

  // Use Cases
  getIt.registerLazySingleton(() => GetProducts(getIt<ProductRepository>()));
  getIt.registerLazySingleton(() => ToggleFavorite(getIt<ProductRepository>()));
}
