import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_project/features/auth/di/login_vm.dart';
import 'package:sample_project/features/auth/di/registration_vm.dart';
import 'package:sample_project/features/auth/screens/login.dart';
import 'package:sample_project/features/auth/screens/registration.dart';
import 'package:sample_project/features/blank/blank.dart';
import 'package:sample_project/features/detail/screen/detail.dart';

import 'package:sample_project/features/home/screens/home_screen.dart';
import 'package:sample_project/features/main/di/main_screen_vm.dart';
import 'package:sample_project/features/main/repository/tour.dart';

import 'package:sample_project/features/main/screen/main_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: [
          GoRoute(
            path: 'login',
            builder: (BuildContext context, GoRouterState state) {
              return AppLogin(
                vm: LoginVM(),
              );
            },
          ),
          GoRoute(
            path: 'registration',
            builder: (BuildContext context, GoRouterState state) {
              return AppRegistration(
                vm: RegistrationVM(context: context),
              );
            },
          ),
          GoRoute(
            path: 'blank',
            builder: (BuildContext context, GoRouterState state) {
              return const BlankPage();
            },
          ),
          GoRoute(
            path: 'main',
            builder: (BuildContext context, GoRouterState state) {
              return AppMainScreen(
                vm: MainScreenVM(),
              );
            },
            routes: [
              GoRoute(
                path: 'detail/:id',
                builder: (BuildContext context, GoRouterState state) {
                  TourModel model = state.extra! as TourModel;
                  return DeatailPage(
                    data: model,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
