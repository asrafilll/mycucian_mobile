class ShopModel {
  int? id;
  String? image;
  String? name;
  String? location;
  String? city;
  int? delivery;
  int? pickup;
  String? whatsapp;
  String? description;
  int? price;
  double? rate;
  DateTime? createdAt;
  DateTime? updatedAt;

  ShopModel({
    this.id,
    this.image,
    this.name,
    this.location,
    this.city,
    this.delivery,
    this.pickup,
    this.whatsapp,
    this.description,
    this.price,
    this.rate,
    this.createdAt,
    this.updatedAt,
  });

  factory ShopModel.fromJson(Map<String, dynamic> json) => ShopModel(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        location: json["location"],
        city: json["city"],
        delivery: json["delivery"],
        pickup: json["pickup"],
        whatsapp: json["whatsapp"],
        description: json["description"],
        price: json["price"],
        rate: json["rate"]?.toDouble(),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "location": location,
        "city": city,
        "delivery": delivery,
        "pickup": pickup,
        "whatsapp": whatsapp,
        "description": description,
        "price": price,
        "rate": rate,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
