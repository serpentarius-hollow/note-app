import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/failures.dart';

import '../core/value_objects.dart';
import 'value_objects.dart';

part 'todo_item.freezed.dart';

@freezed
class TodoItem with _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    required UniqueId id,
    required TodoName name,
    required bool isDone,
  }) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        id: UniqueId(),
        name: TodoName(''),
        isDone: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }
}
