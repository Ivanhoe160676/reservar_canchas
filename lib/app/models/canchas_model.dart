import 'dart:convert';

class Cancha {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  late final String status;

  Cancha({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.status,
  });

  Cancha copyWith({
    String? image,
    String? title,
    String? subtitle,
    String? price,
    String? status,
  }) =>
      Cancha(
        image: image ?? this.image,
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        price: price ?? this.price,
        status: status ?? this.status,
      );

  factory Cancha.fromJson(String str) => Cancha.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cancha.fromMap(Map<String, dynamic> json) => Cancha(
        image: json["image"],
        title: json["title"],
        subtitle: json["subtitle"],
        price: json["price"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "title": title,
        "subtitle": subtitle,
        "price": price,
        "status": status,
      };
}

List<Cancha> canchas = [
  Cancha(
    image: 'assets/images/cancha1.jpg',
    title: 'Cancha 1',
    subtitle: 'Cancha de Fútbol',
    price: '200',
    status: 'Disponible',
  ),
  Cancha(
    image: 'assets/images/cancha2.jpg',
    title: 'Cancha 2',
    subtitle: 'Cancha de Fútbol',
    price: '200',
    status: 'Disponible',
  ),
  Cancha(
    image: 'assets/images/cancha3.jpg',
    title: 'Cancha 3',
    subtitle: 'Cancha de Fútbol',
    price: '200',
    status: 'Disponible',
  ),
  Cancha(
    image: 'assets/images/cancha4.jpg',
    title: 'Cancha 4',
    subtitle: 'Cancha de Fútbol',
    price: '200',
    status: 'Disponible',
  ),
  Cancha(
    image: 'assets/images/cancha5.jpg',
    title: 'Cancha 5',
    subtitle: 'Cancha de Fútbol',
    price: '200',
    status: 'Disponible',
  ),
  Cancha(
    image: 'assets/images/cancha6.jpg',
    title: 'Cancha 6',
    subtitle: 'Cancha de Fútbol',
    price: '200',
    status: 'Disponible',
  ),
];
