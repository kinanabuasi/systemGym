import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:systemgym/constants/storage_keys.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/product_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class ProductRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final GetStorage _box = GetStorage();
  final _log = logger(ProductRemoteDataSource);

  Future<Either<Failures, ProductModel>> addProduct(Map<String, dynamic> data) async {
    try {
      String token = _box.read(StorageKey.TOKEN);
      final response =
          await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      ProductModel productModel = ProductModel.fromJson(response.data['data']);
      return Right(productModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, ProductModel>> activityById(Map<String, dynamic> data) async {
    try {
      //  String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      ProductModel productModel = ProductModel.fromJson(response.data);
      return Right(productModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<ProductModel>>> allProduct() async {
    try {
      //  String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<ProductModel> data = List.from(response.data.map((e) => ProductModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, ProductModel>> updataProduct(int id) async {
    try {
      String token = _box.read(StorageKey.USER_DATA);
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      ProductModel productModel = ProductModel.fromJson(response.data);
      return Right(productModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteProduct(int id) async {
    try {
      String token = _box.read(StorageKey.USER_DATA);
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
