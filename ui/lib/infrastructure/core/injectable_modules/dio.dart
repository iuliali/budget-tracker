
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../config.dart';

@module
abstract class DioInjectableModule {
  @lazySingleton
  Dio get dio => Dio(
      BaseOptions(
        baseUrl: API_URL,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
      )
  );
}
