import 'dart:convert';
import 'package:crypto/crypto.dart';

class CryptHelper {
  CryptHelper._();

  static String generatedSha256Hash(String pass) {
    final bytes = utf8.encode(pass);
    return sha256.convert(bytes).toString();
  }
}
