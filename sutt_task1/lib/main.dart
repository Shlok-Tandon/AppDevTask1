import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sutt_task1/home.dart';
import 'package:sutt_task1/marks.dart';
import 'package:sutt_task1/submit.dart';


void main() {
  runApp(MaterialApp.router(
    title: 'Go Router',
    routerConfig: _router,
  ));
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(path: "/", builder: ((context, state) => const Home())),
  GoRoute(path: "/marks", builder: ((context, state) => const Marks())),
  GoRoute(path: "/submit", builder: ((context, state) => const Submit()))
]);

