import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:dwfifa/app/core/config/env/env.dart';

//DioForNative -> Mobile
//DioForWeb -> Web
class CustomDio extends DioForNative {
  CustomDio()
      : super(
          BaseOptions(
            baseUrl: Env.instanceEnv['backend_base_url'] ?? '',
            //connectTimeout -> a conexão tem 5000 para chegar até backend se não ela da timeout
            connectTimeout: 5000,
            //receiveTimeout -> responsavel por dar a resposta, caso em 60000(60 segundos) ele nao der resposta da timeout
            receiveTimeout: 60000,
          ),
        ) {
    //loggers do interceptor pra ve no terminal
    interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
      ),
    );
  }

  CustomDio auth() {
    //Interceptor de authenticação(tipo um middleware)
    return this;
  }

  CustomDio unAuth() {
    //Remove o interceptor de authenticação(tipo um middleware)
    return this;
  }
}
