// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../data/model/todo_model.dart' as _i8;
import '../presentation/pages/home/home_page.dart' as _i4;
import '../presentation/pages/home/navigation_page.dart' as _i1;
import '../presentation/pages/note/add_note_page.dart' as _i3;
import '../presentation/pages/note/edit_note_page.dart' as _i2;
import '../presentation/pages/note/note_complete_page.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    EditNoteRoute.name: (routeData) {
      final args = routeData.argsAs<EditNoteRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.EditNotePage(key: args.key, todo: args.todo));
    },
    AddNoteRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.AddNotePage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    NoteCompletedRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NoteCompletedPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: 'navigation-page', fullMatch: true),
        _i6.RouteConfig(NavigationRoute.name,
            path: 'navigation-page',
            children: [
              _i6.RouteConfig(HomeRoute.name,
                  path: 'home-page', parent: NavigationRoute.name),
              _i6.RouteConfig(NoteCompletedRoute.name,
                  path: 'note-completed-page', parent: NavigationRoute.name)
            ]),
        _i6.RouteConfig(EditNoteRoute.name, path: 'edit-page'),
        _i6.RouteConfig(AddNoteRoute.name, path: 'add-page')
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i6.PageRouteInfo<void> {
  const NavigationRoute({List<_i6.PageRouteInfo>? children})
      : super(NavigationRoute.name,
            path: 'navigation-page', initialChildren: children);

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i2.EditNotePage]
class EditNoteRoute extends _i6.PageRouteInfo<EditNoteRouteArgs> {
  EditNoteRoute({_i7.Key? key, required _i8.TodoModel todo})
      : super(EditNoteRoute.name,
            path: 'edit-page', args: EditNoteRouteArgs(key: key, todo: todo));

  static const String name = 'EditNoteRoute';
}

class EditNoteRouteArgs {
  const EditNoteRouteArgs({this.key, required this.todo});

  final _i7.Key? key;

  final _i8.TodoModel todo;

  @override
  String toString() {
    return 'EditNoteRouteArgs{key: $key, todo: $todo}';
  }
}

/// generated route for
/// [_i3.AddNotePage]
class AddNoteRoute extends _i6.PageRouteInfo<void> {
  const AddNoteRoute() : super(AddNoteRoute.name, path: 'add-page');

  static const String name = 'AddNoteRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.NoteCompletedPage]
class NoteCompletedRoute extends _i6.PageRouteInfo<void> {
  const NoteCompletedRoute()
      : super(NoteCompletedRoute.name, path: 'note-completed-page');

  static const String name = 'NoteCompletedRoute';
}
