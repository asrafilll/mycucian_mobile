import 'package:mycucian_mobile/data/models/shop_model.dart';
import 'package:mycucian_mobile/data/models/user_model.dart';

class LaundryModel {
  int? id;
  String? claimCode;
  int? userId;
  int? shopId;
  double? weight;
  int? withPickup;
  int? withDelivery;
  String? pickupAddress;
  String? deliveryAddress;
  int? total;
  String? description;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  ShopModel? shop;
  UserModel? user;

  LaundryModel({
    this.id,
    this.claimCode,
    this.userId,
    this.shopId,
    this.weight,
    this.withPickup,
    this.withDelivery,
    this.pickupAddress,
    this.deliveryAddress,
    this.total,
    this.description,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.shop,
    this.user,
  });

  factory LaundryModel.fromJson(Map<String, dynamic> json) => LaundryModel(
        id: json["id"],
        claimCode: json["claim_code"],
        userId: json["user_id"],
        shopId: json["shop_id"],
        weight: json["weight"]?.toDouble(),
        withPickup: json["with_pickup"],
        withDelivery: json["with_delivery"],
        pickupAddress: json["pickup_address"],
        deliveryAddress: json["delivery_address"],
        total: json["total"],
        description: json["description"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        shop: json["shop"] == null ? null : ShopModel.fromJson(json["shop"]),
        user: json["user"] == null ? null : UserModel.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "claim_code": claimCode,
        "user_id": userId,
        "shop_id": shopId,
        "weight": weight,
        "with_pickup": withPickup,
        "with_delivery": withDelivery,
        "pickup_address": pickupAddress,
        "delivery_address": deliveryAddress,
        "total": total,
        "description": description,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "shop": shop?.toJson(),
        "user": user?.toJson(),
      };
}
