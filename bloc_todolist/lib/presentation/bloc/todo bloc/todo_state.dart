part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoLoadingState extends TodoState {}

class TodoLoadedState extends TodoState {
  final List<TodoModel> todoList;

  const TodoLoadedState({this.todoList = const <TodoModel>[]});

  @override
  List<Object> get props => [todoList];

  Map<String, dynamic> toMap() {
    return {
      'todoList': todoList.map((x) => x.toMap()).toList(),
    };
  }

  factory TodoLoadedState.fromMap(Map<String, dynamic> map) {
    return TodoLoadedState(
      todoList: List<TodoModel>.from(map['todoList']?.map((x) => TodoModel.fromMap(x))),
    );
  }
}
