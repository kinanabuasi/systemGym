import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/nationality_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class NationalityRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(NationalityRemoteDataSource);

  Future<Either<Failures, NationalityModel>> addNationality(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.nationality, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      NationalityModel nationalityModel = NationalityModel.fromJson(response.data['data']);
      return Right(nationalityModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<NationalityModel>>> allNationality() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.nationality, headers: AppHeaders.headers);
      _log.i(response.data);
      List<NationalityModel> data = List.from(response.data['data'].map((e) => NationalityModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<NationalityModel>>> updataNationality(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.nationality, headers: AppHeaders.headers);
      _log.i(response.data);
      List<NationalityModel> data = List.from(response.data.map((e) => NationalityModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteNationality(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.nationality, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, NationalityModel>> employeeById(Map<String, dynamic> data) async {
    try {
      final response =
          await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.nationalityById, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      NationalityModel nationalityModel = NationalityModel.fromJson(response.data);
      return Right(nationalityModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
