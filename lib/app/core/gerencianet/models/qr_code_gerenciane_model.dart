import 'dart:convert';

class QrCodeGerencianeModel {
  String image;
  String code;

  QrCodeGerencianeModel({
    required this.image,
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'code': code,
    };
  }

  factory QrCodeGerencianeModel.fromMap(Map<String, dynamic> map) {
    return QrCodeGerencianeModel(
      image: map['image'] ?? '',
      code: map['code'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory QrCodeGerencianeModel.fromJson(String source) =>
      QrCodeGerencianeModel.fromMap(json.decode(source));
}
