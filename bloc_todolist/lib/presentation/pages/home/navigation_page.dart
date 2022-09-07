import 'package:auto_route/auto_route.dart';
import 'package:bloc_todolist/presentation/pages/home/home_page.dart';
import 'package:bloc_todolist/route/routes.gr.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(      
     routes: [      
        HomeRoute(),      
        NoteCompletedRoute(),      
        ],     
     builder: (context, child, _) {    
      final tabsRouter = AutoTabsRouter.of(context);    
        return Scaffold(      
              appBar: AppBar(      
              title: Text(context.topRoute.name),      
              leading: AutoLeadingButton()),      
              body: child,      
              bottomNavigationBar: BottomNavigationBar(          
                    currentIndex: tabsRouter.activeIndex,          
                    onTap: tabsRouter.setActiveIndex ,      
                    items: [          
                      BottomNavigationBarItem(label: 'Books', icon: Icon(Icons.home)),         
                      BottomNavigationBarItem(label: 'Complete', icon: Icon(Icons.person))         
                    ],          
                  ),    
                 
      ); },    
  );
  }
}
