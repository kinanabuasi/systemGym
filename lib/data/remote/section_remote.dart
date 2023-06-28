import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/section_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class SectionRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(SectionRemoteDataSource);

  Future<Either<Failures, SectionModel>> addSection(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      SectionModel sectionModel = SectionModel.fromJson(response.data['data']);
      return Right(sectionModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SectionModel>>> allSection() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SectionModel> data = List.from(response.data.map((e) => SectionModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SectionModel>>> updataSection(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SectionModel> data = List.from(response.data.map((e) => SectionModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteSection(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
