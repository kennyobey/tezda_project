class User {
  final String email;
  final String password;
  final String username;
  final String city;

  User({
    required this.email,
    required this.password,
    required this.username,
    required this.city,
  });


  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'username': username,
      'address': {
        'city': city,
      },
    };
  }

 
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
      username: json['username'],
      city: json['address']['city'],
    );
  }
}