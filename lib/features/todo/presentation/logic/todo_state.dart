import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:varosha_app/features/todo/domain/entities/todo_entity.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded(List<TodoEntity> todos) = _Loaded;
  const factory TodoState.error(String message) = _Error;
}
