import 'package:valipour_test/features/feature_barbers/domain/entities/barbers_entity.dart';

/// count : 1
/// next : null
/// previous : null
/// results : [{"slug":"Lookee","fullname":"Lookee","is_shop":false,"avatar":"https://lookee.nwhco.ir/media/barber/avatar/15_5.png","address":"California, West","lat_lon":"33,34","rate":4.0}]

class BarbersListModel extends BarbersEntity{
  const BarbersListModel({
    num? count,
    dynamic next,
    dynamic previous,
    List<Results>? results,}):super(
    count:count,
    next:next,
    previous:previous,
    results: results,
  );

  factory BarbersListModel.fromJson(dynamic json) {
    List<Results> results = [];
    if(json['results'] != null) {
      json['results'].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
    return BarbersListModel(
      count: json['count'],
      next: json['next'],
      previous:json['previous'],
      results:results
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// slug : "Lookee"
/// fullname : "Lookee"
/// is_shop : false
/// avatar : "https://lookee.nwhco.ir/media/barber/avatar/15_5.png"
/// address : "California, West"
/// lat_lon : "33,34"
/// rate : 4.0

class Results {
  Results({
      this.slug, 
      this.fullname, 
      this.isShop, 
      this.avatar, 
      this.address, 
      this.latLon, 
      this.rate,});

  Results.fromJson(dynamic json) {
    slug = json['slug'];
    fullname = json['fullname'];
    isShop = json['is_shop'];
    avatar = json['avatar'];
    address = json['address'];
    latLon = json['lat_lon'];
    rate = json['rate'];
  }
  String? slug;
  String? fullname;
  bool? isShop;
  String? avatar;
  String? address;
  String? latLon;
  num? rate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slug'] = slug;
    map['fullname'] = fullname;
    map['is_shop'] = isShop;
    map['avatar'] = avatar;
    map['address'] = address;
    map['lat_lon'] = latLon;
    map['rate'] = rate;
    return map;
  }

}