import '../route/routes.gr.dart';
import '../shared/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/service/navigation_service.dart';
import 'bloc/edit bloc/edit_bloc.dart';
import 'bloc/todo bloc/todo_bloc.dart';
import 'pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();  
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosBloc()/* ..add(LoadTodosEvent()) */,
            
        ),
        BlocProvider<EditBloc>(create: (context) => EditBloc()),
      ],
      child: MaterialApp.router(
        title: 'To do List',
        debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),      
      routeInformationParser: _appRouter.defaultRouteParser(), 
        locale: const Locale("en"),
        theme: ThemeData(
          textTheme: CustomTextStyle.textFontApp,
        ),
        // translationsKeys: AppTranslation.translations,
      ),
    );
  }
}
