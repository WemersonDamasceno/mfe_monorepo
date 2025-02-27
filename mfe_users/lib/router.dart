import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:mfe_users/main.dart';

final List<GoRoute> usersRoutes = [
  GoRoute(
    path: '/users',
    builder: (context, state) => const UsersScreen(),
  ),
  GoRoute(
    path: '/users/add',
    builder: (context, state) => const AddUserScreen(),
  ),
];
