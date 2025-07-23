import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/features/todo/domain/entities/todo_entity.dart';
import 'package:varosha_app/route/route_imports.dart';

import 'package:varosha_app/features/todo/presentation/logic/todo_bloc.dart';
import 'package:varosha_app/features/todo/presentation/logic/todo_event.dart';
import 'package:varosha_app/features/todo/presentation/logic/todo_state.dart';
import 'package:varosha_app/features/todo/presentation/widgets/empty_todo_placeholder.dart';
import 'package:varosha_app/features/todo/presentation/widgets/todo_input_dialog.dart';
import 'package:varosha_app/features/todo/presentation/widgets/todo_list_tile.dart';

class TodoBaseScreen extends StatelessWidget {
  const TodoBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TodoView();
  }
}

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  void _loadTodos(BuildContext context) {
    context.read<TodoBloc>().add(const TodoEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todo List'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go(RouteName.dashboard),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () => _loadTodos(context),
            ),
          ],
        ),
        body: BlocConsumer<TodoBloc, TodoState>(
          listener: (context, state) {
            state.mapOrNull(
              error: (state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: 'Retry',
                      textColor: Colors.white,
                      onPressed: () => _loadTodos(context),
                    ),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async => _loadTodos(context),
              child: state.map(
                initial: (_) => const SizedBox(),
                loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (state) {
                  if (state.todos.isEmpty) {
                    return Stack(
                      children: [
                        ListView(), // For RefreshIndicator to work with empty list
                        const EmptyTodoPlaceholder(),
                      ],
                    );
                  }
                  return ListView.builder(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      final todo = state.todos[index];
                      return TodoListTile(
                        todo: todo,
                        onToggle: (value) {
                          context.read<TodoBloc>().add(
                                TodoEvent.update(
                                  todo.copyWith(isCompleted: value),
                                ),
                              );
                        },
                        onDelete: () {
                          context
                              .read<TodoBloc>()
                              .add(TodoEvent.delete(todo.id));
                        },
                      );
                    },
                  );
                },
                error: (state) => Stack(
                  children: [
                    ListView(), // For RefreshIndicator to work with error state
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 48.r,
                            color: Colors.red,
                          ),
                          8.verticalSpace,
                          Text(
                            state.message,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.red,
                            ),
                          ),
                          16.verticalSpace,
                          ElevatedButton(
                            onPressed: () => _loadTodos(context),
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => TodoInputDialog(
                onSubmit: (title, description) {
                  final todo = TodoEntity(
                    id: DateTime.now().toString(),
                    title: title,
                    description: description,
                    createdAt: DateTime.now(),
                  );
                  context.read<TodoBloc>().add(TodoEvent.add(todo));
                },
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
