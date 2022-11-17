// To parse this JSON data, do
//
//     final placeEntity = placeEntityFromJson(jsonString);

import 'dart:convert';

class PlaceEntity {
  PlaceEntity({
    this.id,
    this.address,
    this.image,
    this.logo,
    this.email,
    this.introduction,
    this.name,
    this.phoneNumber,
    this.social,
    this.tags,
    this.createdAt,
    this.updatedAt,
    this.category,
  });

  String? id;
  String? address;
  String? email;
  String? image;
  String? logo;
  String? introduction;
  String? name;
  String? category;
  String? phoneNumber;
  Social? social;
  String? tags;
  int? createdAt;
  int? updatedAt;

  factory PlaceEntity.fromRawJson(String str) => PlaceEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaceEntity.fromJson(Map<String, dynamic> json) => PlaceEntity(
    id: json["id"] == null ? null : json["id"],
    address: json["address"] == null ? null : json["address"],
    email: json["email"] == null ? null : json["email"],
    image: json["image"] == null ? null : json["image"],
    logo: json["logo"] == null ? null : json["logo"],
    introduction: json["introduction"] == null ? null : json["introduction"],
    name: json["name"] == null ? null : json["name"],
    category: json["category"] == null ? null : json["category"],
    phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
    social: json["social"] == null ? null : Social.fromJson(json["social"]),
    tags: json["tags"] == null ? null : json["tags"],
    createdAt: json["createdAt"] == null ? null : json["createdAt"],
    updatedAt: json["updatedAt"] == null ? null : json["updatedAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "address": address == null ? null : address,
    "email": email == null ? null : email,
    "image": image == null ? null : image,
    "logo": logo == null ? null : logo,
    "introduction": introduction == null ? null : introduction,
    "name": name == null ? null : name,
    "category": category == null ? null : category,
    "phoneNumber": phoneNumber == null ? null : phoneNumber,
    "social": social == null ? null : social!.toJson(),
    "tags": tags == null ? null : tags,
    "createdAt": createdAt == null ? null : createdAt,
    "updatedAt": updatedAt == null ? null : updatedAt,
  };
}

class Social {
  Social({
    this.facebook,
    this.google,
    this.twitter,
    this.website,
  });

  String? facebook;
  String? google;
  String? twitter;
  String? website;

  factory Social.fromRawJson(String str) => Social.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    facebook: json["facebook"] == null ? null : json["facebook"],
    google: json["google"] == null ? null : json["google"],
    twitter: json["twitter"] == null ? null : json["twitter"],
    website: json["website"] == null ? null : json["website"],
  );

  Map<String, dynamic> toJson() => {
    "facebook": facebook == null ? null : facebook,
    "google": google == null ? null : google,
    "twitter": twitter == null ? null : twitter,
    "website": website == null ? null : website,
  };
}
