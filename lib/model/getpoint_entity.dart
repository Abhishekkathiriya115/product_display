import 'dart:convert';

class GetPointEntity {
  GetPointEntity({
    this.amount,
  });

  var amount;

  factory GetPointEntity.fromRawJson(String str) => GetPointEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetPointEntity.fromJson(Map<String, dynamic> json) => GetPointEntity(
    amount: json["amount"] == null ? null : json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount == null ? null : amount,
  };
}
