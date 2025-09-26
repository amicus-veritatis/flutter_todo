// lib/widgets/add_todo.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../todo_list_notifier.dart';

class AddTodo extends ConsumerWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newTodoController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: newTodoController,
              decoration: const InputDecoration(
                labelText: 'Input',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                                    ref.read(todoListProvider.notifier).addTodo(value);
                  newTodoController.clear();
                }
              },
            ),
          ),
          const SizedBox(width: 10),
          IconButton.filled(
            icon: const Icon(Icons.add),
            tooltip: 'Add Todo',
            onPressed: () {
              if (newTodoController.text.isNotEmpty) {
                                  ref.read(todoListProvider.notifier).addTodo(newTodoController.text);
                newTodoController.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
