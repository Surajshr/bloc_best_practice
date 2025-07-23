import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:varosha_app/core/di/di.dart';
import 'package:varosha_app/features/todo/domain/usecases/add_todo.dart';
import 'package:varosha_app/features/todo/domain/usecases/delete_todo.dart';
import 'package:varosha_app/features/todo/domain/usecases/get_todos.dart';
import 'package:varosha_app/features/todo/domain/usecases/update_todo.dart';
import 'package:varosha_app/features/todo/presentation/logic/todo_event.dart';
import 'package:varosha_app/features/todo/presentation/logic/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final getTodos = getIt<GetTodos>();
  final addTodo = getIt<AddTodo>();
  final updateTodo = getIt<UpdateTodo>();
  final deleteTodo = getIt<DeleteTodo>();

  TodoBloc() : super(const TodoState.initial()) {
    on<TodoEvent>((event, emit) async {
      await event.map(
        load: (_) => _onLoadTodos(emit),
        add: (e) => _onAddTodo(e.todo, emit),
        update: (e) => _onUpdateTodo(e.todo, emit),
        delete: (e) => _onDeleteTodo(e.id, emit),
      );
    });
  }

  Future<void> _onLoadTodos(Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    try {
      final todos = await getTodos();
      emit(TodoState.loaded(todos));
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }

  Future<void> _onAddTodo(todo, Emitter<TodoState> emit) async {
    try {
      await addTodo(todo);
      final todos = await getTodos();
      emit(TodoState.loaded(todos));
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTodo(todo, Emitter<TodoState> emit) async {
    try {
      await updateTodo(todo);
      final todos = await getTodos();
      emit(TodoState.loaded(todos));
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }

  Future<void> _onDeleteTodo(String id, Emitter<TodoState> emit) async {
    try {
      await deleteTodo(id);
      final todos = await getTodos();
      emit(TodoState.loaded(todos));
    } catch (e) {
      emit(TodoState.error(e.toString()));
    }
  }
}
