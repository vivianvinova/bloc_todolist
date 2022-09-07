import 'package:auto_route/auto_route.dart';
import 'package:bloc_todolist/route/routes.gr.dart';
import 'package:flutter/material.dart';

import '../Observer.dart';

class NoteCompletedPage extends StatelessWidget {
   NoteCompletedPage({Key? key}) : super(key: key);
   final _observer = MyObserver(); 

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text('Note Completed {} '),
        Row(
          children: [
            NavLink(context: context, label: 'Learn', destination: const NoteLearnRoute()),
            NavLink(context: context, label: 'Game', destination: const NoteGameRoute()),
          ],
        ),
        Expanded(
          // nested routes will be rendered here
          child: AutoRouter(
            inheritNavigatorObservers: true,
            navigatorObservers:()=> [MyObserver()],

          ),
        )
      ],
    ));
  }

  NavLink({required BuildContext context, required String label, required destination}) {
    return TextButton(
      onPressed: () {
        AutoRouter.of(context).push(destination);
      },
      child: Text(label),
    );
  }
}
