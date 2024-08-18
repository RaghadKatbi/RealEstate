class Register {
  final String message;
  final User user;

  Register({required this.message, required this.user});

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
      message: json['message'],
      user: User.fromJson(json['user']),
    );
  }
}

class User {
  final String name;
  final String phone;
  final String updatedAt;
  final String createdAt;
  final int id;

  User({
    required this.name,
    required this.phone,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      phone: json['phone'],
      updatedAt: json['updated_at'],
      createdAt: json['created_at'],
      id: json['id'],
    );
  }
}