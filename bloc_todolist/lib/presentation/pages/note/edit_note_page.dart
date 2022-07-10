import 'package:bloc_todolist/shared/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/todo_model.dart';
import '../../../shared/values/strings.dart';
import '../../../shared/widgets/widges.dart';
import '../../bloc/edit bloc/edit_bloc.dart';
import '../../bloc/todo bloc/todo_bloc.dart';

class EditNotePage extends StatefulWidget {
  final TodoModel todo;
  const EditNotePage({
    Key? key,
    required this.todo,
  }) : super(key: key);
  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  late final TextEditingController _titleController;
  late final TextEditingController _contentController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.todo.title);
    _contentController = TextEditingController(text: widget.todo.content);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditBloc, EditState>(
      builder: (context, state) {
        return ScreenFrame(
          appBar: CustomAppBar(),
          children: [
            AbsorbPointer(
              absorbing: state is DisableEditState,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: AppString.enterTitle,
                      controller: _titleController,
                      hintStyle: CustomTextStyle.bold(color: AppColors.nobel, fontSize: FontSize.veryBig),
                      haveOutlineBorder: false,
                      style: CustomTextStyle.bold(fontSize: FontSize.veryBig),
                    ),
                    CustomTextField(
                      hintText: AppString.enterContent,
                      controller: _contentController,
                      haveOutlineBorder: false,
                      maxLine: null,
                      style: CustomTextStyle.regular(),
                    ),
                  ],
                ),
              ),
            ),
          ],
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: CustomIcon(
                  icon: state is DisableEditState ? Icons.delete_forever_outlined : null,
                  color: Colors.red,
                  size: IconSize.large,
                ),
                onPressed: () {
                  context.read<TodosBloc>().add(
                        DeleteTodoEvent(todo: widget.todo),
                      );
                  Navigator.pop(context);
                },
              ),
              IconButton(
                  icon: CustomIcon(
                    icon: state is DisableEditState ? Icons.edit : Icons.done,
                    size: IconSize.large,
                  ),
                  onPressed: () {
                    context.read<EditBloc>().add(PressEditEvent());
                    if (state is EnableEditState) {
                      context.read<TodosBloc>().add(
                            UpdateTodoEvent(
                                todo: TodoModel(
                              id: widget.todo.id,
                              title: _titleController.text,
                              content: _contentController.text,
                              color: widget.todo.color,
                            )),
                          );
                    }
                  }),
            ],
          ),
        );
      },
    );
  }
}
