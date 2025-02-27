library mfe_users; // Define um package para o MFE

import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/material.dart';

// 🚀 Configuração das rotas do MFE Usuários
final GoRouter usersRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/users',
      builder: (context, state) => const UsersScreen(),
    ),
    GoRoute(
      path: '/users/add',
      builder: (context, state) => const AddUserScreen(),
    ),
  ],
);

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestão de Usuários')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/users/add'); // Navega para Adicionar Usuário
          },
          child: const Text('Adicionar Usuário'),
        ),
      ),
    );
  }
}

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adicionar Usuário')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/users'); // Volta para a listagem de usuários
          },
          child: const Text('Voltar para Lista'),
        ),
      ),
    );
  }
}
