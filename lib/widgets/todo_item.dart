// lib/widgets/todo_item.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../todo.dart';
import '../todo_list_notifier.dart';

class TodoItem extends ConsumerWidget {
  final Todo todo;
  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      // Checkbox to toggle completion
      leading: Checkbox(
        value: todo.completed,
        onChanged: (bool? value) {
          ref.read(todoListProvider.notifier).toggle(todo.id);
        },
      ),
      // Todo Description
      title: Text(
        todo.description,
        style: TextStyle(
          decoration: todo.completed
              ? TextDecoration.lineThrough
              : TextDecoration.none,
          color: todo.completed ? Colors.grey : null,
        ),
      ),
      // Delete Button
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: () {
                    ref.read(todoListProvider.notifier).removeTodo(todo.id);
        },
      ),
    );
  }
}
