import 'dart:developer';

import 'package:exo_app/my_cubit/mycubit.dart';
import 'package:exo_app/pages/flutterBloc.dart';
import 'package:exo_app/pages/flutterMaterial.dart';
import 'package:exo_app/pages/flutterRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'Router/my_router.gr.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(initialRoutes: [HomeRoute()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  List ontaps = [
    CounterRoute(),
    HomeRoute(),
    const MyRouterRoute(),
    const GeitRoute(),
  ];
  List<String> todos = [
    "Use of flutter bloc",
    "Use of Auto router",
    "Use of getIt",
    "Use of Material Icons"
  ];
  List colors = [
    Colors.blue,
    Colors.blue[100],
    Colors.amberAccent[400],
    Colors.blueGrey,
    Colors.deepPurple
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Have to do')),
        backgroundColor: Colors.white,
        body: Container(
          child: AnimationLimiter(
              child: ListView.builder(
                  padding: const EdgeInsets.all(20),
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: todos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      delay: const Duration(milliseconds: 100),
                      child: SlideAnimation(
                        duration: const Duration(milliseconds: 2500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        verticalOffset: -250,
                        child: ScaleAnimation(
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: GestureDetector(
                            onTap: () async {
                              _appRouter.push<dynamic>(const CounterRoute());
                              
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext contex) {
                                return index == 0
                                    ? const CounterPage()
                                    : index == 3
                                        ? const MyMaterialPage()
                                        : Container();
                              }));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 100,
                              decoration: BoxDecoration(
                                color: colors.elementAt(index),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 40,
                                    spreadRadius: 10,
                                  ),
                                ],
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  todos.elementAt(index),
                                  style: const TextStyle(fontSize: 25),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
        ));
  }
}
