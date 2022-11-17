class MessageLocalDB {
  String? uniqueId;
  int? isRead;
  String? postId;
  // String? amount;
  // String? remainder;
  MessageLocalDB(
      {this.uniqueId,
      this.isRead,
        this.postId,
        // this.amount,
        // this.remainder
      });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'unique_id': uniqueId,
      'is_read': isRead,
      'post_id': postId,
      // 'amount': amount,
      // 'remainder': remainder,
    };
    return map;
  }

  MessageLocalDB.fromMap(Map<String, dynamic> map) {
    uniqueId = map['unique_id'];
    isRead = map['is_read'];
    postId = map['post_id'];
    // amount = map['amount'];
    // remainder = map['remainder'];
  }
}


class StempLocalDB {
  String? uniqueId;
  var amount;
  int? remainder;
  String? image;
  int? node;
  StempLocalDB(
      {this.uniqueId,
        this.amount,
        this.remainder,
        this.image, this.node
      });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'unique_id': uniqueId,
      'amount': amount,
      'remainder': remainder,
      'image': image,
      'node': node,
    };
    return map;
  }

  StempLocalDB.fromMap(Map<String, dynamic> map) {
    uniqueId = map['unique_id'];
    amount = map['amount'];
    remainder = map['remainder'];
    image = map['image'];
    node = map['node'];
  }
}



class StempTrasactionLocalDB {
  String? uniqueId;
  String? placeId;
  String? UserId;
  String? data;
  // String? node;
  StempTrasactionLocalDB(
      {this.uniqueId,
        this.placeId,
        this.UserId,
        this.data,
        // this.node
      });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'unique_id': uniqueId,
      'placeId': placeId,
      'UserId': UserId,
      'data': data,
      // 'node': node,
    };
    return map;
  }

  StempTrasactionLocalDB.fromMap(Map<String, dynamic> map) {
    uniqueId = map['unique_id'];
    placeId = map['placeId'];
    UserId = map['UserId'];
    data = map['data'];
    // node = map['node'];
  }
}


class userTrasactionLocalDB {
  String? uniqueId;
  String? data;
  int? node;
 late int page;
  userTrasactionLocalDB(
      {this.uniqueId,
        this.data,
        this.node,
        required this.page
      });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'unique_id': uniqueId,
      'data': data,
      'node': node,
      'page': page,
    };
    return map;
  }

  userTrasactionLocalDB.fromMap(Map<String, dynamic> map) {
    uniqueId = map['unique_id'];
    page = map['page'];
    data = map['data'];
    node = map['node'];
  }
}