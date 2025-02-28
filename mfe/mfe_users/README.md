# 📦 Microfrontends com Flutter

Este repositório contém um projeto estruturado utilizando **Microfrontends (MFEs)** em Flutter, gerenciando rotas com `GoRouter` e centralizando dependências em `commons_dependencies`. O objetivo é criar um monorepo bem organizado, escalável e modular.

## 🏗 Estrutura do Projeto

```
main_app/               # Aplicação principal
  ├── lib/
  │   ├── main.dart    # Ponto de entrada da aplicação
  │   ├── router.dart  # Gerenciamento de rotas do app principal
  │   ├── core/        # Configurações globais
  │   ├── features/    # Recursos principais
  ├── pubspec.yaml

mfe/                   # Microfrontends
  ├── mfe_login/       # MFE responsável pelo login e registro
  │   ├── lib/
  │   │   ├── main.dart
  │   │   ├── router.dart
  │   │   ├── screens/
  │   │   ├── widgets/
  │   ├── pubspec.yaml
  ├── mfe_users/       # MFE responsável pela gestão de usuários
  │   ├── lib/
  │   │   ├── main.dart
  │   │   ├── router.dart
  │   │   ├── screens/
  │   │   ├── widgets/
  │   ├── pubspec.yaml

commons/               # Dependências compartilhadas
  ├── commons_dependencies/
  │   ├── lib/
  │   │   ├── commons_dependencies.dart
  │   ├── pubspec.yaml

melos.yaml             # Configuração do Melos para gerenciar os pacotes
```

## 🚀 Configuração do Ambiente

1. **Clone o repositório:**
   ```sh
   git clone https://github.com/WemersonDamasceno/mfe_monorepo.git
   cd mfe_monorepo
   ```
2. **Instale o Melos:**
   ```sh
   dart pub global activate melos
   ```
3. **Execute o bootstrap para sincronizar as dependências:**
   ```sh
   melos bootstrap
   ```
4. **Inicie o aplicativo principal:**
   ```sh
   cd main_app
   flutter run
   ```

---

## 📌 Configuração de Rotas

### \*\*📌 Rotas no \*\***`main_app`**

Arquivo: `main_app/lib/router.dart`

```dart
import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:mfe_login/router.dart';
import 'package:mfe_users/router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    ...loginRoutes
    ...usersRoutes
  ],
);
```

### \*\*📌 Rotas no \*\***`mfe_login`**

Arquivo: `mfe_login/lib/router.dart`

```dart
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

```

### \*\*📌 Rotas no \*\***`mfe_users`**

Arquivo: `mfe_users/lib/router.dart`

```dart
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

```

---

## 🛠 Ferramentas Utilizadas

- **Flutter**: Framework para desenvolvimento mobile
- **GoRouter**: Gerenciamento de rotas
- **Melos**: Gerenciamento de pacotes no monorepo
- **Commons Dependencies**: Centralização de pacotes compartilhados

## 📌 Contribuindo

1. Fork este repositório 🍴
2. Crie uma branch com a sua feature (`git checkout -b minha-feature`)
3. Commit suas mudanças (`git commit -m 'Adicionando nova feature'`)
4. Envie para o repositório (`git push origin minha-feature`)
5. Abra um Pull Request 🚀

---

## 🏆 Créditos

Desenvolvido por **Wemerson Damasceno** ❤️

Se gostou, dê uma ⭐ no repositório!

---