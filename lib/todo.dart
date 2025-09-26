// lib/todo.dart

import 'package:flutter/foundation.dart';

@immutable // This annotation makes the class immutable.
class Todo {
  final String id;
  final String desc;
  final bool comp;

  const Todo({
    required this.id,
    required this.desc,
    this.comp = false,
  });

  Todo clone({String? id, String? desc, bool? comp}) {
    return Todo(
      id: id ?? this.id,
      desc: desc ?? this.desc,
      comp: comp ?? this.comp,
    );
  }
}