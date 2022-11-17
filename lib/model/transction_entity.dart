// To parse this JSON data, do
//
//     final transctionEntity = transctionEntityFromJson(jsonString);

import 'dart:convert';

class TransactionEntity {
  TransactionEntity({
    this.id,
    this.logo,
    this.type,
    this.action,
    this.collectType,
    this.amount,
    this.price,
    this.date,
    this.isReversed,
    this.placeId,
    this.promotionId,
    this.userId,
    this.licensePlate,
    this.qrCodeId,
    this.beaconId,
    this.groupId,
    this.couponId,
    this.userName,
    this.placeName,
    this.promotionName,
  });

  int? id;
  String? type;
  String? logo;
  String? action;
  dynamic collectType;
  var amount;
  dynamic price;
  int? date;
  bool? isReversed;
  String? placeId;
  String? promotionId;
  String? userId;
  dynamic licensePlate;
  dynamic qrCodeId;
  dynamic beaconId;
  dynamic groupId;
  dynamic couponId;
  String? userName;
  String? placeName;
  String? promotionName;

  factory TransactionEntity.fromRawJson(String str) => TransactionEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransactionEntity.fromJson(Map<String, dynamic> json) => TransactionEntity(
    id: json["id"] == null ? null : json["id"],
    logo: json["logo"] == null ? null : json["logo"],
    type: json["type"] == null ? null : json["type"],
    action: json["action"] == null ? null : json["action"],
    collectType: json["collectType"],
    amount: json["amount"] == null ? null : json["amount"],
    price: json["price"],
    date: json["date"] == null ? null : json["date"],
    isReversed: json["isReversed"] == null ? null : json["isReversed"],
    placeId: json["placeId"] == null ? null : json["placeId"],
    promotionId: json["promotionId"] == null ? null : json["promotionId"],
    userId: json["userId"] == null ? null : json["userId"],
    licensePlate: json["licensePlate"],
    qrCodeId: json["qrCodeId"],
    beaconId: json["beaconId"],
    groupId: json["groupId"],
    couponId: json["couponId"],
    userName: json["userName"] == null ? null : json["userName"],
    placeName: json["placeName"] == null ? null : json["placeName"],
    promotionName: json["promotionName"] == null ? null : json["promotionName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "logo": logo == null ? null : logo,
    "type": type == null ? null : type,
    "action": action == null ? null : action,
    "collectType": collectType,
    "amount": amount == null ? null : amount,
    "price": price,
    "date": date == null ? null : date,
    "isReversed": isReversed == null ? null : isReversed,
    "placeId": placeId == null ? null : placeId,
    "promotionId": promotionId == null ? null : promotionId,
    "userId": userId == null ? null : userId,
    "licensePlate": licensePlate,
    "qrCodeId": qrCodeId,
    "beaconId": beaconId,
    "groupId": groupId,
    "couponId": couponId,
    "userName": userName == null ? null : userName,
    "placeName": placeName == null ? null : placeName,
    "promotionName": promotionName == null ? null : promotionName,
  };
}
