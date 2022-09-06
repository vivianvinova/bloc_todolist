// @CupertinoAutoRouter              
// @AdaptiveAutoRouter              
// @CustomAutoRouter              
import 'package:auto_route/annotations.dart';
import 'package:bloc_todolist/presentation/pages/home/home_page.dart';
import 'package:bloc_todolist/presentation/pages/note/add_note_page.dart';
import 'package:bloc_todolist/presentation/pages/note/edit_note_page.dart';

@MaterialAutoRouter(              
  replaceInRouteName: 'Page,Route',              
  routes: <AutoRoute>[              
    AutoRoute(path: "home-page",page: HomePage, initial: true),     
    AutoRoute(path: "edit-page",page: EditNotePage, initial: true), 
    AutoRoute(path: "add-page",page: AddNotePage, initial: true),    

  ],              
)              
class $AppRouter {}