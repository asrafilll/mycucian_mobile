import 'package:mylaundry_mobile/data/models/shop_model.dart';

class PromoModel {
  int? id;
  String? image;
  int? shopId;
  int? oldPrice;
  int? newPrice;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;
  ShopModel? shop;

  PromoModel({
    this.id,
    this.image,
    this.shopId,
    this.oldPrice,
    this.newPrice,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.shop,
  });

  factory PromoModel.fromJson(Map<String, dynamic> json) => PromoModel(
        id: json["id"],
        image: json["image"],
        shopId: json["shop_id"],
        oldPrice: json["old_price"],
        newPrice: json["new_price"],
        description: json["description"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        shop: json["shop"] == null ? null : ShopModel.fromJson(json["shop"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "shop_id": shopId,
        "old_price": oldPrice,
        "new_price": newPrice,
        "description": description,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "shop": shop?.toJson(),
      };
}
