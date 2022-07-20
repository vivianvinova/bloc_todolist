import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../data/model/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodosBloc extends HydratedBloc<TodosEvent, TodoState> {
  TodosBloc() : super(TodoLoadedState()) {
    on<LoadTodosEvent>(_onLoadTodos);
    on<AddTodoEvent>(_onAddTodo);
    on<DeleteTodoEvent>(_onDeleteTodo);
    on<UpdateTodoEvent>(_onUpdateTodo);
  }

  void _onLoadTodos(LoadTodosEvent event, Emitter<TodoState> emit)  {
    emit(
      const TodoLoadedState(),
    );
  }

  void _onAddTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      emit(
        TodoLoadedState(
          todoList: List.from(state.todoList)..add(event.todo),
        ),
      );
    }
  }

  void _onDeleteTodo(DeleteTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      emit(TodoLoadedState(todoList: List.from(state.todoList)..remove(event.todo)));
    }
  }

  void _onUpdateTodo(UpdateTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      List<TodoModel> todos = state.todoList.map((todo) => todo.id == event.todo.id ? event.todo : todo).toList();
      emit(TodoLoadedState(todoList: todos));
    }
  }

  @override
  TodoState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
      print("Lan ANh");

    return TodoLoadedState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(TodoState state) {
    // TODO: implement toJson
    if (state is TodoLoadedState) {
      print("Kien");
      return state.toMap();
    }
    return null;
  }
}
