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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../data/model/todo_model.dart' as _i6;
import '../presentation/pages/home/home_page.dart' as _i1;
import '../presentation/pages/note/add_note_page.dart' as _i3;
import '../presentation/pages/note/edit_note_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    EditNoteRoute.name: (routeData) {
      final args = routeData.argsAs<EditNoteRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.EditNotePage(key: args.key, todo: args.todo));
    },
    AddNoteRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.AddNotePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: 'home-page', fullMatch: true),
        _i4.RouteConfig(HomeRoute.name, path: 'home-page'),
        _i4.RouteConfig(EditNoteRoute.name, path: 'edit-page'),
        _i4.RouteConfig(AddNoteRoute.name, path: 'add-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EditNotePage]
class EditNoteRoute extends _i4.PageRouteInfo<EditNoteRouteArgs> {
  EditNoteRoute({_i5.Key? key, required _i6.TodoModel todo})
      : super(EditNoteRoute.name,
            path: 'edit-page', args: EditNoteRouteArgs(key: key, todo: todo));

  static const String name = 'EditNoteRoute';
}

class EditNoteRouteArgs {
  const EditNoteRouteArgs({this.key, required this.todo});

  final _i5.Key? key;

  final _i6.TodoModel todo;

  @override
  String toString() {
    return 'EditNoteRouteArgs{key: $key, todo: $todo}';
  }
}

/// generated route for
/// [_i3.AddNotePage]
class AddNoteRoute extends _i4.PageRouteInfo<void> {
  const AddNoteRoute() : super(AddNoteRoute.name, path: 'add-page');

  static const String name = 'AddNoteRoute';
}
