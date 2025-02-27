import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:mfe_users/data/models/user_model.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List<UserModel> users = [
    UserModel(name: 'Fulano', email: 'fulano@example'),
    UserModel(name: 'Ciclano', email: 'ciclano@example'),
    UserModel(name: 'Beltrano', email: 'beltrano@example'),
  ];

  void addUser(UserModel user) {
    setState(() => users.add(user));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestão de usuários')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(users[index].name),
          subtitle: Text(users[index].email),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network('https://picsum.photos/20$index'),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: () {},
          ),
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
        onPressed: () async {
          final userAdded =
              await context.push('/users/add') as Map<String, dynamic>?;

          if (userAdded != null) {
            addUser(UserModel.fromJson(userAdded));
          }
        },
      ),
    );
  }
}
