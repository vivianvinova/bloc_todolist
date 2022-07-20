import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../data/model/todo_model.dart';
import '../../../shared/config/config.dart';
import '../../../shared/values/strings.dart';
import '../../../shared/widgets/widges.dart';
import '../../bloc/todo bloc/todo_bloc.dart';

class AddNotePage extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      appBar: CustomAppBar(),
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
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const CustomIcon(
              icon: Icons.add_circle,
              color: AppColors.mediumAquamarine,
              size: IconSize.large,
            ),
            onPressed: () {
              var todo = TodoModel(
                title: _titleController.text,
                content: _contentController.text,
                // color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                id: Uuid().v4(),
              );
              context.read<TodosBloc>().add(
                    AddTodoEvent(todo: todo),
                  );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
