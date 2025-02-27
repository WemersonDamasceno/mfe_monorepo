import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:mfe_login/main.dart';

final List<GoRoute> loginRoutes = [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) => const RegisterScreen(),
  ),
];
