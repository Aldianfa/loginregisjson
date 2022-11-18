// import 'dart:ffi';

class Ramene {
  String description;
  String img_url;
  int price;
  String product_name;

  Ramene(
      {required this.description,
      required this.img_url,
      required this.price,
      required this.product_name});

  factory Ramene.fromJson(Map<String, dynamic> json) {
    return Ramene(
      product_name: json['product_name'],
      price: json['price'],
      img_url: json['img_url'],
      description: json['description'],
    );
  }
}
