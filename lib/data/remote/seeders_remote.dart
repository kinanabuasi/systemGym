import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/seeders_level_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class SeedersRemote {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(SeedersRemote);

  Future<Either<Failures, List<SeedersIdModel>>> allProf() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.prof, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data['data'].map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SeedersIdModel>>> allChampionesChipLevel() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Category, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data.map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SeedersIdModel>>> allFoodSystem() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Category, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data.map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SeedersIdModel>>> allProductType() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.ProductType, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data['data'].map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SeedersIdModel>>> allSubTypeId() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Category, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data.map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SeedersIdModel>>> allTournmentType() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Category, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data.map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SeedersIdModel>>> allTraningGroup() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Category, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data.map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SeedersIdModel>>> allActivity() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Category, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data.map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SeedersIdModel>>> allEmploymentType() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.EmploymentTypes, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SeedersIdModel> data = List.from(response.data['data'].map((e) => SeedersIdModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
