import 'package:go_router/go_router.dart';
import 'package:mfe_login/router.dart';
import 'package:mfe_users/router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    ...loginRouter.routes,
    ...usersRouter.routes,
  ],
);
