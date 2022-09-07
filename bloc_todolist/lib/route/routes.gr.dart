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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../data/model/todo_model.dart' as _i10;
import '../presentation/pages/home/home_page.dart' as _i4;
import '../presentation/pages/home/navigation_page.dart' as _i1;
import '../presentation/pages/note/add_note_page.dart' as _i3;
import '../presentation/pages/note/edit_note_page.dart' as _i2;
import '../presentation/pages/note/note_complete_page.dart' as _i5;
import '../presentation/pages/note/note_game.dart' as _i7;
import '../presentation/pages/note/note_learn.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    EditNoteRoute.name: (routeData) {
      final args = routeData.argsAs<EditNoteRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.EditNotePage(key: args.key, todo: args.todo));
    },
    AddNoteRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.AddNotePage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    NoteCompletedRoute.name: (routeData) {
      final args = routeData.argsAs<NoteCompletedRouteArgs>(
          orElse: () => const NoteCompletedRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.NoteCompletedPage(key: args.key));
    },
    NoteLearnRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.NoteLearnPage());
    },
    NoteGameRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.NoteGamePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/navigation-page', fullMatch: true),
        _i8.RouteConfig(NavigationRoute.name,
            path: '/navigation-page',
            children: [
              _i8.RouteConfig(HomeRoute.name,
                  path: 'home-page', parent: NavigationRoute.name),
              _i8.RouteConfig(NoteCompletedRoute.name,
                  path: 'note-completed-page',
                  parent: NavigationRoute.name,
                  children: [
                    _i8.RouteConfig('#redirect',
                        path: '',
                        parent: NoteCompletedRoute.name,
                        redirectTo: 'users',
                        fullMatch: true),
                    _i8.RouteConfig(NoteLearnRoute.name,
                        path: 'users', parent: NoteCompletedRoute.name),
                    _i8.RouteConfig(NoteGameRoute.name,
                        path: 'posts', parent: NoteCompletedRoute.name)
                  ])
            ]),
        _i8.RouteConfig(EditNoteRoute.name, path: 'edit-page'),
        _i8.RouteConfig(AddNoteRoute.name, path: 'add-page')
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i8.PageRouteInfo<void> {
  const NavigationRoute({List<_i8.PageRouteInfo>? children})
      : super(NavigationRoute.name,
            path: '/navigation-page', initialChildren: children);

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i2.EditNotePage]
class EditNoteRoute extends _i8.PageRouteInfo<EditNoteRouteArgs> {
  EditNoteRoute({_i9.Key? key, required _i10.TodoModel todo})
      : super(EditNoteRoute.name,
            path: 'edit-page', args: EditNoteRouteArgs(key: key, todo: todo));

  static const String name = 'EditNoteRoute';
}

class EditNoteRouteArgs {
  const EditNoteRouteArgs({this.key, required this.todo});

  final _i9.Key? key;

  final _i10.TodoModel todo;

  @override
  String toString() {
    return 'EditNoteRouteArgs{key: $key, todo: $todo}';
  }
}

/// generated route for
/// [_i3.AddNotePage]
class AddNoteRoute extends _i8.PageRouteInfo<void> {
  const AddNoteRoute() : super(AddNoteRoute.name, path: 'add-page');

  static const String name = 'AddNoteRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.NoteCompletedPage]
class NoteCompletedRoute extends _i8.PageRouteInfo<NoteCompletedRouteArgs> {
  NoteCompletedRoute({_i9.Key? key, List<_i8.PageRouteInfo>? children})
      : super(NoteCompletedRoute.name,
            path: 'note-completed-page',
            args: NoteCompletedRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'NoteCompletedRoute';
}

class NoteCompletedRouteArgs {
  const NoteCompletedRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'NoteCompletedRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.NoteLearnPage]
class NoteLearnRoute extends _i8.PageRouteInfo<void> {
  const NoteLearnRoute() : super(NoteLearnRoute.name, path: 'users');

  static const String name = 'NoteLearnRoute';
}

/// generated route for
/// [_i7.NoteGamePage]
class NoteGameRoute extends _i8.PageRouteInfo<void> {
  const NoteGameRoute() : super(NoteGameRoute.name, path: 'posts');

  static const String name = 'NoteGameRoute';
}
