// lib/home_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'widgets/add_todo.dart';
import 'widgets/todo_list.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App 20201557 김명섭 커넥티드플랫폼이론과실제(캡스톤디자인)'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: const Column(
            children: [
              AddTodo(),
              TodoList(),
            ],
          ),
        ),
      ),
    );
  }
}
