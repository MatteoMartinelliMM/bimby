import 'dart:collection';

import 'package:bimby/model/Cliente.dart';
import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

class Api {
  static final String baseUrl =
      'http://www.mocky.io/v2/5ecd463c320000820023687c';
  final String apiKey = '';
  final Dio dio = Dio();

  final DioCacheManager dioCache =
      DioCacheManager(CacheConfig(baseUrl: baseUrl));

  String category;

  Api() {
    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = 5000;
    dio.transformer = FlutterTransformer();
    dio.interceptors.add(dioCache.interceptor);
  }

  Map<String, dynamic> createExtras() {
    LinkedHashMap<String, dynamic> map = LinkedHashMap();
    return map;
  }

  Future<List<Cliente>> getClienti() async {
    var response = await dio.get(baseUrl,
        options: buildCacheOptions(Duration(seconds: 120),
            options: Options(extra: createExtras())));
    if (response.statusCode == 200) {
      return response.data['customers']
          .map<Cliente>((json) => Cliente.fromJson(json))
          .toList();
    } else
      return new List();
  }
}
