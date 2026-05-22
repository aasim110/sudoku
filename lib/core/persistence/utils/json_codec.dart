import 'dart:convert';

abstract final class JsonCodec {
  static String encodeObject(Map<String, dynamic> value) => jsonEncode(value);

  static Map<String, dynamic> decodeObject(String value) {
    return jsonDecode(value) as Map<String, dynamic>;
  }

  static String encodeList(List<Map<String, dynamic>> value) {
    return jsonEncode(value);
  }

  static List<Map<String, dynamic>> decodeList(String value) {
    final decoded = jsonDecode(value) as List<dynamic>;
    return decoded.cast<Map<String, dynamic>>();
  }
}
