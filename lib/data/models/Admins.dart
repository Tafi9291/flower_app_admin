
class Admin {
  final int adminId;
  final String adName;
  final String email;
  final String password;
  final String? phoneNumber;
  final String? birthDay;
  final String? imageUrl;
  final String? gender;

  Admin({
    required this.adminId,
    required this.adName,
    required this.email,
    required this.password,
    this.phoneNumber,
    this.birthDay,
    this.imageUrl,
    this.gender,
  });

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      adminId: json['adminId'],
      adName: json['adName'],
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phoneNumber'],
      birthDay: json['birthDay'],
      imageUrl: json['imageUrl'],
      gender: json['gender'],
    );
  }

  Map<String, dynamic> toJson() => {
    "adminId": adminId,
    "adName": adName,
    "email": email,
    "password": password,
    "phoneNumber": phoneNumber,
    "birthDay": birthDay,
    "imageUrl": imageUrl,
    "gender": gender,
  };
}
