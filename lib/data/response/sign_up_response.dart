import 'dart:convert';

class SIgnUpResponse {
    final String email;
    final String uid;
   

    SIgnUpResponse({
        required this.email,
        required this.uid,
     
    });

    factory SIgnUpResponse.fromRawJson(String str) => SIgnUpResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SIgnUpResponse.fromJson(Map<String, dynamic> json) => SIgnUpResponse(
        email: json["email"],
        uid: json["uid"],
        
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "uid": uid,
      
    };
}
