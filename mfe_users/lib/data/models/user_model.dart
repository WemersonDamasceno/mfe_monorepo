class UserModel {
  final String name;
  final String email;
  final String? telefone;

  UserModel({
    required this.name,
    required this.email,
    this.telefone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      telefone: json['telefone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'telefone': telefone,
    };
  }
}
