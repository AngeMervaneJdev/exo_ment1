// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../main.dart' as _i1;
import '../pages/flutterBloc.dart' as _i2;
import '../pages/flutterGetIt.dart' as _i4;
import '../pages/flutterMaterial.dart' as _i3;
import '../pages/flutterRouter.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.HomePage(key: args.key));
    },
    CounterRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CounterPage());
    },
    MyMaterialRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MyMaterialPage());
    },
    GeitRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.GeitPage());
    },
    MyRouterRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MyRouterPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeRoute.name, path: '/'),
        _i6.RouteConfig(CounterRoute.name, path: '/counter'),
        _i6.RouteConfig(MyMaterialRoute.name, path: '/materials'),
        _i6.RouteConfig(GeitRoute.name, path: '/get-it'),
        _i6.RouteConfig(MyRouterRoute.name, path: '/router')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i7.Key? key})
      : super(HomeRoute.name, path: '/', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CounterPage]
class CounterRoute extends _i6.PageRouteInfo<void> {
  const CounterRoute() : super(CounterRoute.name, path: '/counter');

  static const String name = 'CounterRoute';
}

/// generated route for
/// [_i3.MyMaterialPage]
class MyMaterialRoute extends _i6.PageRouteInfo<void> {
  const MyMaterialRoute() : super(MyMaterialRoute.name, path: '/materials');

  static const String name = 'MyMaterialRoute';
}

/// generated route for
/// [_i4.GeitPage]
class GeitRoute extends _i6.PageRouteInfo<void> {
  const GeitRoute() : super(GeitRoute.name, path: '/get-it');

  static const String name = 'GeitRoute';
}

/// generated route for
/// [_i5.MyRouterPage]
class MyRouterRoute extends _i6.PageRouteInfo<void> {
  const MyRouterRoute() : super(MyRouterRoute.name, path: '/router');

  static const String name = 'MyRouterRoute';
}
