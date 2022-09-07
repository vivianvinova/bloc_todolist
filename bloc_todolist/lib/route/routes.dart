// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:bloc_todolist/presentation/pages/home/home_page.dart';
import 'package:bloc_todolist/presentation/pages/home/navigation_page.dart';
import 'package:bloc_todolist/presentation/pages/note/add_note_page.dart';
import 'package:bloc_todolist/presentation/pages/note/edit_note_page.dart';
import 'package:bloc_todolist/presentation/pages/note/note_complete_page.dart';
import 'package:bloc_todolist/presentation/pages/note/note_game.dart';
import 'package:bloc_todolist/presentation/pages/note/note_learn.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/navigation-page", page: NavigationPage, initial: true, children: [
      AutoRoute(path: "home-page", page: HomePage),
      AutoRoute(
        path: "note-completed-page",
        page: NoteCompletedPage,
        children: [
          AutoRoute(path: 'users', page: NoteLearnPage, initial: true),
          AutoRoute(path: 'posts', page: NoteGamePage),
        ],
      ),
    ]),
    AutoRoute(path: "edit-page", page: EditNotePage, initial: true),
    AutoRoute(path: "add-page", page: AddNotePage, initial: true),
    // AutoRoute(
    //     path: "note-completed-page",
    //     initial: true,
    //     page: NoteCompletedPage,
    //     children: [
    //       AutoRoute(path: 'users', page: NoteLearnPage, initial: true),
    //       AutoRoute(path: 'posts', page: NoteGamePage),
    //     ],
    //   )
  ],
)
class $AppRouter {}
