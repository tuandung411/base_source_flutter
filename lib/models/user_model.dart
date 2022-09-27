class User {
  int id;
  String username;
  String password;
  
 
  User(
      {required this.id,
      required this.username,
      required this.password,
      
    });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        username: json['username'],
        password: json['password'],
       
        );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['password'] = password;
  
    
    return data;
  }

  static List<User> listFromJson(List<dynamic> list) {
    return List<User>.from(list.map((e) => User.fromJson(e)));
  }

  static List listToJson(List<dynamic> list) {
    return list.map((e) => e.fromJson(e)).toList();
  }
}
