class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String nuit;
  final DateTime createdAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.nuit,
    required this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json, {String? userId}) {
    final createdAtTimestamp = json['createdAt'] as Map<String, dynamic>;
    final createdAt = DateTime.fromMillisecondsSinceEpoch(
      (createdAtTimestamp['_seconds'] as int) * 1000,
    );

    return User(
      id: userId ?? json['userId'] ?? '',
      name: json['name']?.toString() ?? '',
      email: json['email']?.toString() ?? '',
      phone: json['phone']?.toString() ?? '',
      nuit: json['nuit']?.toString() ?? '',
      createdAt: createdAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': id,
      'name': name,
      'email': email,
      'phone': phone,
      'nuit': nuit,
      'createdAt': {
        '_seconds': createdAt.millisecondsSinceEpoch ~/ 1000,
        '_nanoseconds': 0,
      },
    };
  }
}