// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    this.idUser,
    this.namaUser,
    this.emailUser,
    this.alamatUser,
  });

  String idUser;
  String namaUser;
  String emailUser;
  String alamatUser;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        idUser: json["id_user"],
        namaUser: json["nama_user"],
        emailUser: json["email_user"],
        alamatUser: json["alamat_user"],
      );

  Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "nama_user": namaUser,
        "email_user": emailUser,
        "alamat_user": alamatUser,
      };
}
