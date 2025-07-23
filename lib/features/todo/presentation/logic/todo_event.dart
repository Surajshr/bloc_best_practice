import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:varosha_app/features/todo/domain/entities/todo_entity.dart';

part 'todo_event.freezed.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.load() = _Load;
  const factory TodoEvent.add(TodoEntity todo) = _Add;
  const factory TodoEvent.update(TodoEntity todo) = _Update;
  const factory TodoEvent.delete(String id) = _Delete;
}
