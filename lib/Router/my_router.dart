// ignore_for_file: unused_element

import 'package:auto_route/auto_route.dart';
import 'package:exo_app/main.dart';
import 'package:exo_app/pages/flutterBloc.dart';
import 'package:exo_app/pages/flutterGetIt.dart';
import 'package:exo_app/pages/flutterMaterial.dart';
import 'package:exo_app/pages/flutterRouter.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true,path: "/"),
    AutoRoute(page: CounterPage,path:"/counter"),
    AutoRoute(page: MyMaterialPage,path:"/materials"),
    AutoRoute(page: GeitPage,path:"/get-it"),
     AutoRoute(page: MyRouterPage,path:"/router"),
  ],
)
// extend the generated private router
class $AppRouter {}
