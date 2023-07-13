import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/Location_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class LocationRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(LocationRemoteDataSource);

  Future<Either<Failures, LocationModel>> addCoash(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.location, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      LocationModel locationModel = LocationModel.fromJson(response.data['data']);
      return Right(locationModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<LocationModel>>> allLocation() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.location, headers: AppHeaders.headers);
      _log.i(response.data);
      List<LocationModel> data = List.from(response.data.map((e) => LocationModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<LocationModel>>> updataLocation(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.location, headers: AppHeaders.headers);
      _log.i(response.data);
      List<LocationModel> data = List.from(response.data.map((e) => LocationModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteLocation(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.location, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, LocationModel>> employeeById(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.locationById, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      LocationModel locationModel = LocationModel.fromJson(response.data);
      return Right(locationModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
