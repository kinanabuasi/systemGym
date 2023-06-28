import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/club_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class RegisterRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(RegisterRemoteDataSource);

  Future<Either<Failures, ClubModel>> addRegister(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      ClubModel clubModel = ClubModel.fromJson(response.data['data']);
      return Right(clubModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, ClubModel>> activityById(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      ClubModel activityModel = ClubModel.fromJson(response.data);
      return Right(activityModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<ClubModel>>> allRegister() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<ClubModel> data = List.from(response.data.map((e) => ClubModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<ClubModel>>> updataRegister(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<ClubModel> data = List.from(response.data.map((e) => ClubModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteRegister(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
