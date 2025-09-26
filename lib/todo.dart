// lib/todo.dart

import 'package:flutter/foundation.dart';

@immutable // This annotation makes the class immutable.
class Todo {
  final String id;
  final String description;
  final bool completed;

  const Todo({
    required this.id,
    required this.description,
    this.completed = false,
  });

  // Since the class is immutable, we create a copy of the object
  // with the updated value.
  Todo copyWith({String? id, String? description, bool? completed}) {
    return Todo(
      id: id ?? this.id,
      description: description ?? this.description,
      completed: completed ?? this.completed,
    );
  }
}