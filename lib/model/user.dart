class User {
  final String id;
  final String name;
  final String address;
  final String img;
  final String email;
  final int age;
  User(
      {required this.id,
      required this.name,
      required this.address,
      required this.img,
      required this.email,
      required this.age});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        age: json['age'],
        name: json['name'],
        email: json['email'],
        address: json['address'],
        img: json['image']);
  }
}
