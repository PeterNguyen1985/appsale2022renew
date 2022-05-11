import 'package:dio/dio.dart';
import 'package:appsale2022renew/data/model/request/add_cart_request.dart';
import 'package:appsale2022renew/data/remote/request/order_request.dart';

class OrderRepository {
  late OrderRequest _request;

  OrderRepository();

  void updateOrderRequest({required OrderRequest request}) {
    this._request = request;
  }

  Future<Response> fetchOrder() {
    return _request.fetchOrder();
  }

  Future<Response> addOrder(String id_product) {
    return _request.addOrder(AddOrderRequest(id_product: id_product));
  }
}
