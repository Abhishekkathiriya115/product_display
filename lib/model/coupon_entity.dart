// To parse this JSON data, do
//
//     final getCouponEntity = getCouponEntityFromJson(jsonString);

import 'dart:convert';

class GetCouponEntity {
  GetCouponEntity({
     this.id,
     this.placeId,
     this.countryId,
     this.startDate,
     this.endDate,
     this.title,
     this.description,
     this.identifier,
  });

  String? id;
  String? placeId;
  String? countryId;
  int? startDate;
  int? endDate;
  String? title;
  String? description;
  String? identifier;

  factory GetCouponEntity.fromRawJson(String str) => GetCouponEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetCouponEntity.fromJson(Map<String, dynamic> json) => GetCouponEntity(
    id: json["id"],
    placeId: json["placeId"],
    countryId: json["countryId"],
    startDate: json["startDate"],
    endDate: json["endDate"],
    title: json["title"],
    description: json["description"],
    identifier: json["identifier"] ?? '111',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "placeId": placeId,
    "countryId": countryId,
    "startDate": startDate,
    "endDate": endDate,
    "title": title,
    "description": description,
    "identifier": identifier ?? null,
  };
}
