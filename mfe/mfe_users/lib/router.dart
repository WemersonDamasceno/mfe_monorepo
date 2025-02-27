import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:mfe_users/features/add_user/views/add_user_screen.dart';
import 'package:mfe_users/features/user_list/views/user_list_screen.dart';

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
