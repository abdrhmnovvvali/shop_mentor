import 'dart:convert';

class SIgnUpRequest {
    final String email;
    final String username;
    final String mobile;
    final String password;
    final String passwordConfirm;

    SIgnUpRequest({
        required this.email,
        required this.username,
        required this.mobile,
        required this.password,
        required this.passwordConfirm,
    });

    factory SIgnUpRequest.fromRawJson(String str) => SIgnUpRequest.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SIgnUpRequest.fromJson(Map<String, dynamic> json) => SIgnUpRequest(
        email: json["email"],
        username: json["username"],
        mobile: json["mobile"],
        password: json["password"],
        passwordConfirm: json["password_confirm"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "username": username,
        "mobile": mobile,
        "password": password,
        "password_confirm": passwordConfirm,
    };
}
