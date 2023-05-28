
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class HttpInjectableModule {
  @lazySingleton
  http.Client get httpClient => http.Client();
}
