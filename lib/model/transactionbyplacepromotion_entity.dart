// To parse this JSON data, do
//
//     final transactionByPlacePromotionEntity = transactionByPlacePromotionEntityFromJson(jsonString);

import 'dart:convert';

class TransactionByPlacePromotionEntity {
  TransactionByPlacePromotionEntity({
    this.id,
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
  Type? type;
  Action? action;
  String? collectType;
  var amount;
  dynamic price;
  int? date;
  bool? isReversed;
  PlaceId? placeId;
  PromotionId? promotionId;
  UserId? userId;
  dynamic licensePlate;
  dynamic qrCodeId;
  dynamic beaconId;
  dynamic groupId;
  dynamic couponId;
  UserName? userName;
  PlaceName? placeName;
  PromotionName? promotionName;

  factory TransactionByPlacePromotionEntity.fromRawJson(String str) => TransactionByPlacePromotionEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransactionByPlacePromotionEntity.fromJson(Map<String, dynamic> json) => TransactionByPlacePromotionEntity(
    id: json["id"] == null ? null : json["id"],
    type: json["type"] == null ? null : typeValues.map[json["type"]],
    action: json["action"] == null ? null : actionValues.map[json["action"]],
    collectType: json["collectType"] == null ? null : json["collectType"],
    amount: json["amount"] == null ? null : json["amount"],
    price: json["price"],
    date: json["date"] == null ? null : json["date"],
    isReversed: json["isReversed"] == null ? null : json["isReversed"],
    placeId: json["placeId"] == null ? null : placeIdValues.map[json["placeId"]],
    promotionId: json["promotionId"] == null ? null : promotionIdValues.map[json["promotionId"]],
    userId: json["userId"] == null ? null : userIdValues.map[json["userId"]],
    licensePlate: json["licensePlate"],
    qrCodeId: json["qrCodeId"],
    beaconId: json["beaconId"],
    groupId: json["groupId"],
    couponId: json["couponId"],
    userName: json["userName"] == null ? null : userNameValues.map[json["userName"]],
    placeName: json["placeName"] == null ? null : placeNameValues.map[json["placeName"]],
    promotionName: json["promotionName"] == null ? null : promotionNameValues.map[json["promotionName"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "type": type == null ? null : typeValues.reverse![type],
    "action": action == null ? null : actionValues.reverse![action],
    "collectType": collectType == null ? null : collectType,
    "amount": amount == null ? null : amount,
    "price": price,
    "date": date == null ? null : date,
    "isReversed": isReversed == null ? null : isReversed,
    "placeId": placeId == null ? null : placeIdValues.reverse![placeId],
    "promotionId": promotionId == null ? null : promotionIdValues.reverse![promotionId],
    "userId": userId == null ? null : userIdValues.reverse![userId],
    "licensePlate": licensePlate,
    "qrCodeId": qrCodeId,
    "beaconId": beaconId,
    "groupId": groupId,
    "couponId": couponId,
    "userName": userName == null ? null : userNameValues.reverse![userName],
    "placeName": placeName == null ? null : placeNameValues.reverse![placeName],
    "promotionName": promotionName == null ? null : promotionNameValues.reverse![promotionName],
  };
}

enum Action { SERVER }

final actionValues = EnumValues({
  "server": Action.SERVER
});

enum PlaceId { LHW_EA_BB_D6_J5_XA_SK_D1_M }

final placeIdValues = EnumValues({
  "-LhwEABbD6j5XASkD1m_": PlaceId.LHW_EA_BB_D6_J5_XA_SK_D1_M
});

enum PlaceName { BRAVOBIT }

final placeNameValues = EnumValues({
  "Bravobit": PlaceName.BRAVOBIT
});

enum PromotionId { LHW_EB_BF_XT_UF7_E_Y_CR_JZO }

final promotionIdValues = EnumValues({
  "-LhwEbBfXtUf7eYCrJZO": PromotionId.LHW_EB_BF_XT_UF7_E_Y_CR_JZO
});

enum PromotionName { MY_AWESOME_PROMOTION }

final promotionNameValues = EnumValues({
  "My awesome promotion": PromotionName.MY_AWESOME_PROMOTION
});

enum Type { STAMP }

final typeValues = EnumValues({
  "stamp": Type.STAMP
});

enum UserId { MJ_UK_UQ6_N9_E_Y9_QXUW_Q5_A_D_AB_HW5_C_D3 }

final userIdValues = EnumValues({
  "mjUkUQ6N9eY9QxuwQ5aDAbHw5cD3": UserId.MJ_UK_UQ6_N9_E_Y9_QXUW_Q5_A_D_AB_HW5_C_D3
});

enum UserName { BRIAN_VAN_DEN_BROEK }

final userNameValues = EnumValues({
  "Brian van den Broek": UserName.BRIAN_VAN_DEN_BROEK
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
