// To parse this JSON data, do
//
//     final stampEntity = stampEntityFromJson(jsonString);

import 'dart:convert';

class StampEntity {
  StampEntity({
    this.id,
    this.currency,
    this.endDate,
    this.longDescription,
    this.placeId,
    this.shortDescription,
    this.startDate,
    this.title,
    this.type,
    this.maxStamps,
    this.stampPrice,
    this.stampPriceDescription,
    this.stamps,
  });

  String? id;
  Currency? currency;
  int? endDate;
  String? longDescription;
  String? placeId;
  String? shortDescription;
  int? startDate;
  String? title;
  String? type;
  int? maxStamps;
  int? stampPrice;
  String? stampPriceDescription;
  int? stamps;

  factory StampEntity.fromRawJson(String str) => StampEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StampEntity.fromJson(Map<String, dynamic> json) => StampEntity(
    id: json["id"] == null ? null : json["id"],
    currency: json["currency"] == null ? null : Currency.fromJson(json["currency"]),
    endDate: json["endDate"] == null ? null : json["endDate"],
    longDescription: json["longDescription"] == null ? null : json["longDescription"],
    placeId: json["placeId"] == null ? null : json["placeId"],
    shortDescription: json["shortDescription"] == null ? null : json["shortDescription"],
    startDate: json["startDate"] == null ? null : json["startDate"],
    title: json["title"] == null ? null : json["title"],
    type: json["type"] == null ? null : json["type"],
    maxStamps: json["maxStamps"] == null ? null : json["maxStamps"],
    stampPrice: json["stampPrice"] == null ? null : json["stampPrice"],
    stampPriceDescription: json["stampPriceDescription"] == null ? null : json["stampPriceDescription"],
    stamps: json["stamps"] == null ? null : json["stamps"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "currency": currency == null ? null : currency?.toJson(),
    "endDate": endDate == null ? null : endDate,
    "longDescription": longDescription == null ? null : longDescription,
    "placeId": placeId == null ? null : placeId,
    "shortDescription": shortDescription == null ? null : shortDescription,
    "startDate": startDate == null ? null : startDate,
    "title": title == null ? null : title,
    "type": type == null ? null : type,
    "maxStamps": maxStamps == null ? null : maxStamps,
    "stampPrice": stampPrice == null ? null : stampPrice,
    "stampPriceDescription": stampPriceDescription == null ? null : stampPriceDescription,
    "stamps": stamps == null ? null : stamps,
  };
}

class Currency {
  Currency({
    this.code,
    this.id,
    this.name,
    this.symbol,
  });

  Code? code;
  Id? id;
  Name? name;
  Symbol? symbol;

  factory Currency.fromRawJson(String str) => Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    code: json["code"] == null ? null : codeValues.map?[json["code"]],
    id: json["id"] == null ? null : idValues.map?[json["id"]],
    name: json["name"] == null ? null : nameValues.map?[json["name"]],
    symbol: json["symbol"] == null ? null : symbolValues.map?[json["symbol"]],
  );

  Map<String, dynamic> toJson() => {
    "code": code == null ? null : codeValues.reverse?[code],
    "id": id == null ? null : idValues.reverse?[id],
    "name": name == null ? null : nameValues.reverse?[name],
    "symbol": symbol == null ? null : symbolValues.reverse?[symbol],
  };
}

enum Code { EUR, SRD, GIP, FKP, USD }

final codeValues = EnumValues({
  "EUR": Code.EUR,
  "FKP": Code.FKP,
  "GIP": Code.GIP,
  "SRD": Code.SRD,
  "USD": Code.USD
});

enum Id { KDFD6_AZ_ZW_UI_LY4_Z_T_NR, KDFD6_H_A_HU_SD1_E80_X8_O_D, KDFD6_A5_OXL_A_BQI_X2_A_Q, KDFD67_PO_JWCEY_UAP0_EM, KDFD6_BIM063_QLE1_V_DTQ }

final idValues = EnumValues({
  "-Kdfd67poJwceyUap0EM": Id.KDFD67_PO_JWCEY_UAP0_EM,
  "-Kdfd6A5oxlABqiX2aQ-": Id.KDFD6_A5_OXL_A_BQI_X2_A_Q,
  "-Kdfd6AzZwUILy4z_tNR": Id.KDFD6_AZ_ZW_UI_LY4_Z_T_NR,
  "-Kdfd6BIM063Qle1VDtq": Id.KDFD6_BIM063_QLE1_V_DTQ,
  "-Kdfd6hAHuSD1E80X8oD": Id.KDFD6_H_A_HU_SD1_E80_X8_O_D
});

enum Name { EURO_MEMBER_COUNTRIES, SURINAME_DOLLAR, GIBRALTAR_POUND, FALKLAND_ISLANDS_MALVINAS_POUND, UNITED_STATES_DOLLAR }

final nameValues = EnumValues({
  "Euro Member Countries": Name.EURO_MEMBER_COUNTRIES,
  "Falkland Islands (Malvinas) Pound": Name.FALKLAND_ISLANDS_MALVINAS_POUND,
  "Gibraltar Pound": Name.GIBRALTAR_POUND,
  "Suriname Dollar": Name.SURINAME_DOLLAR,
  "United States Dollar": Name.UNITED_STATES_DOLLAR
});

enum Symbol { EMPTY, SYMBOL, SRD, GIP, PURPLE }

final symbolValues = EnumValues({
  "€": Symbol.EMPTY,
  "GIP": Symbol.GIP,
  "£": Symbol.PURPLE,
  "SRD": Symbol.SRD,
  "\u0024": Symbol.SYMBOL
});

enum Type { STAMPS, POINTS }

final typeValues = EnumValues({
  "points": Type.POINTS,
  "stamps": Type.STAMPS
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map?.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
