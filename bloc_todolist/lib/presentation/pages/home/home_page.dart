// ignore_for_file: sort_child_properties_last

import 'package:auto_route/auto_route.dart';
import 'package:bloc_todolist/shared/config/config.dart';
import 'package:bloc_todolist/shared/widgets/widges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/values/strings.dart';
import '../../bloc/todo bloc/todo_bloc.dart';
import '../note/add_note_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      // appBar: CustomAppBar(
      //   labelTitle: AppString.notes,
      //   haveBackButton: false,
      // ),
      children: [
        const CustomTextField(
          hintText: AppString.searchNote,
          prefixIcon: AppImages.icSearch,
        ),
        const SizedBox(
          height: Space.spacing15,
        ),
        _listviewItem(),
      ],
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () => context.router.pushNamed('add-page'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: Space.spacing17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<TodosBloc, TodoState>(
              builder: (context, state) {
                if (state is TodoLoadedState) {
                  return Text('${state.todoList.length} ${AppString.notes}');
                }
                return const Text(AppString.loading);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _listviewItem() {
    return BlocBuilder<TodosBloc, TodoState>(
      builder: (context, state) {
        // if (state is TodoLoadingState) {
        //   return const CircularProgressIndicator();
        // }
        if (state is TodoLoadedState) {
          return Expanded(
              child: ListView.builder(
            // separatorBuilder: ( context,  index) => CustomSizedBox(height: 10,),
            shrinkWrap: true,
            itemCount: state.todoList.length,
            itemBuilder: (BuildContext context, int index) => NoteItem(info: state.todoList[index]),
          ));
        }
        return const Text(AppString.error);
      },
    );
  }
}
