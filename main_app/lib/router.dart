import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:mfe_login/router.dart';
import 'package:mfe_users/router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    ...loginRoutes,
    ...usersRoutes,
  ],
);
