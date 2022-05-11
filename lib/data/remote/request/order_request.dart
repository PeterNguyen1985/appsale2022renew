import 'package:dio/dio.dart';
import 'package:appsale2022renew/data/model/request/add_cart_request.dart';
import 'package:appsale2022renew/data/remote/client/dio_client.dart';

class OrderRequest {
  late Dio _dio;

  OrderRequest() {
    _dio = DioClient.instance.dio;
  }

  Future<Response> fetchOrder() {
    return _dio.post("order");
  }

  Future<Response> addOrder(AddOrderRequest addCartRequest) {
    return _dio.post("order/add-to-cart", data: addCartRequest.toJson());
  }
}