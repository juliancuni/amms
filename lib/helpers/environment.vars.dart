import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnVars {
  static String get filename {
    if (kReleaseMode) return '.env.production';
    return '.env.development';
  }

  static String get apiUrl {
    return dotenv.env['PARSE_URL'] ?? 'PARSE_URL not found';
  }

  static String get appId {
    return dotenv.env['PARSE_APPID'] ?? 'PARSE_APPID not found';
  }

  static String get clientKey {
    return dotenv.env['PARSE_CLIENTKEY'] ?? 'PARSE_CLIENTKEY not found';
  }
}
