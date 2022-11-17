// To parse this JSON data, do
//
//     final userEntity = userEntityFromJson(jsonString);

import 'dart:convert';

class UserEntity {
  UserEntity({
    this.user,
    this.walletPlaces,
    this.walletPromotions,
  });

  User? user;
  List<String>? walletPlaces;
  List<WalletPromotion>? walletPromotions;

  factory UserEntity.fromRawJson(String str) => UserEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
    user: json["user"] == null ? null : User.fromJson(json["user"]),
    walletPlaces: json["walletPlaces"] == null ? null : List<String>.from(json["walletPlaces"].map((x) => x)),
    walletPromotions: json["walletPromotions"] == null ? null : List<WalletPromotion>.from(json["walletPromotions"].map((x) => WalletPromotion.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "user": user == null ? null : user?.toJson(),
    "walletPlaces": walletPlaces == null ? null : List<dynamic>.from(walletPlaces!.map((x) => x)),
    "walletPromotions": walletPromotions == null ? null : List<dynamic>.from(walletPromotions!.map((x) => x.toJson())),
  };
}

class User {
  User({
    this.id,
    this.anonymous,
    this.birthdate,
    this.gender,
    this.name,
    this.email,
  });

  String? id;
  bool? anonymous;
  int? birthdate;
  String? gender;
  String? name;
  String? email;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] == null ? null : json["id"],
    anonymous: json["anonymous"] == null ? null : json["anonymous"],
    birthdate: json["birthdate"] == null ? null : json["birthdate"],
    gender: json["gender"] == null ? null : json["gender"],
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "anonymous": anonymous == null ? null : anonymous,
    "birthdate": birthdate == null ? null : birthdate,
    "gender": gender == null ? null : gender,
    "name": name == null ? null : name,
    "email": email == null ? null : email,
  };
}

class WalletPromotion {
  WalletPromotion({
    this.placeId,
    this.promotionId,
    this.amount,
  });

  String? placeId;
  String? promotionId;
  var amount;

  factory WalletPromotion.fromRawJson(String str) => WalletPromotion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WalletPromotion.fromJson(Map<String, dynamic> json) => WalletPromotion(
    placeId: json["placeId"] == null ? null : json["placeId"],
    promotionId: json["promotionId"] == null ? null : json["promotionId"],
    amount: json["amount"] == null ? null : json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "placeId": placeId == null ? null : placeId,
    "promotionId": promotionId == null ? null : promotionId,
    "amount": amount == null ? null : amount,
  };
}
