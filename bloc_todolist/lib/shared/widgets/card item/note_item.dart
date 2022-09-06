import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:bloc_todolist/route/routes.gr.dart';
import 'package:flutter/material.dart';

import '../../../data/model/todo_model.dart';
import '../../../presentation/pages/note/edit_note_page.dart';
import '../../config/config.dart';

class NoteItem extends StatelessWidget {
  final TodoModel info;

  const NoteItem({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>      AutoRouter.of(context).push(EditNoteRoute(todo: info)) ,

      child: Container(
        margin: const EdgeInsets.symmetric(vertical: Space.spacing5),
        height: ShapeSize.size150,
        width: ShapeSize.size366,
        padding: const EdgeInsets.symmetric(horizontal: Space.spacing32, vertical: Space.spacing20),
        decoration: BoxDecoration(
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
          // color: info.color,
          borderRadius: BorderRadius.circular(AppRadius.radius5),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info.title!,
              style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.veryLarge),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  top: Space.spacing8,
                  bottom: Space.spacing12,
                ),
                height: 93,
                child: Text(
                  info.content!,
                  style: CustomTextStyle.regular(color: AppColors.black, fontSize: FontSize.verySmall),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
