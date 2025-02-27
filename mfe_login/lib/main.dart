library mfe_login;

import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/register'); // Navega para Criar Conta
              },
              child: const Text('Criar Conta'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/users'); // Navega para Usuários
              },
              child: const Text('Ir para Gestão de Usuários'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criar Conta')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/login');
          },
          child: const Text('Voltar para Login'),
        ),
      ),
    );
  }
}
