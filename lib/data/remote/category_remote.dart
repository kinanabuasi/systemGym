import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/category_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class CategoryRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(CategoryRemoteDataSource);

  Future<Either<Failures, CategoryModel>> addCategory(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Category, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      CategoryModel categoryModel = CategoryModel.fromJson(response.data['data']);
      return Right(categoryModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, CategoryModel>> categoryById(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.CategoryShow, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      CategoryModel categoryModel = CategoryModel.fromJson(response.data);
      return Right(categoryModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<CategoryModel>>> allCategory() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Category, headers: AppHeaders.headers);
      _log.i(response.data);
      List<CategoryModel> data = List.from(response.data.map((e) => CategoryModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<CategoryModel>>> updataCategory(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.CategoryUpdate, headers: AppHeaders.headers);
      _log.i(response.data);
      List<CategoryModel> data = List.from(response.data.map((e) => CategoryModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteCategory(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.CategoryDelete, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, CategoryModel>> employeeById(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.CategoryShow, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      CategoryModel categoryModel = CategoryModel.fromJson(response.data);
      return Right(categoryModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
