import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/Sublocation_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class SublocationRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(SublocationRemoteDataSource);

  Future<Either<Failures, SubLocationModel>> addCoash(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      SubLocationModel subLocationModel = SubLocationModel.fromJson(response.data['data']);
      return Right(subLocationModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SubLocationModel>>> allSublocation() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.subLocation, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SubLocationModel> data = List.from(response.data.map((e) => SubLocationModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SubLocationModel>>> updataSublocation(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SubLocationModel> data = List.from(response.data.map((e) => SubLocationModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteSubLocation(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
