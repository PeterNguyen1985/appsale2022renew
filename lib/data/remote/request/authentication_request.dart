
// sau khi đăng nhập thành công hoặc thất bại thì sẽ trả về biến response
// vào postman copy endpoint""user/sign-in" cua phương thức post .
import 'package:dio/dio.dart';
import 'package:appsale2022renew/data/model/request/login_request.dart';
import 'package:appsale2022renew/data/model/request/sign_up_request.dart';
import 'package:appsale2022renew/data/remote/client/dio_client.dart';

class AuthenticationRequest{

  late Dio _dio;

  AuthenticationRequest(){
    _dio = DioClient.instance.dio;
  }

  Future<Response> loginRequest(LoginRequest loginRequest){
    return _dio.post("user/sign-in" , data: loginRequest.toJson());
  }

  Future<Response> signUpRequest(SignUpRequest signUpRequest){
    return _dio.post("user/sign-up" , data: signUpRequest.toJson());
  }
}