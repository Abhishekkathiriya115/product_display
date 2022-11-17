class MessageModel {
  String? title, content,type,placeId,transactionAmount,id,logo,banner;
  int? date;
  bool? archived;
  MessageModel({this.title,this.date,this.content,this.archived,this.type,this.placeId,this.transactionAmount,this.id,this.logo,this.banner});

  // MessageModel.fromJson(dynamic json, String id) {
  //   id = id;
  //   title = json["title"] ?? '';
  //   content =  json["content"] ?? '';
  //   date = json["date"] ?? '';
  //   archived = json["archived"] ?? '';
  // }
}
