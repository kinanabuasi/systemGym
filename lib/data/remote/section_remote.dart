import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../constants/storage_keys.dart';
import '../../model/section_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class SectionRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(SectionRemoteDataSource);
  final GetStorage _box = GetStorage();
  Future<Either<Failures, SectionModel>> addSection(Map<String, dynamic> data) async {
    try {
      String token = _box.read(StorageKey.TOKEN);
      final response =
          await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.sectionAdd, data: data, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      SectionModel sectionModel = SectionModel.fromJson(response.data['data']);
      return Right(sectionModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SectionModel>>> allSection() async {
    try {
      String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.section, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      List<SectionModel> data = List.from(response.data['data'].map((e) => SectionModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SectionModel>>> updataSection(int id) async {
    try {
      String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      List<SectionModel> data = List.from(response.data.map((e) => SectionModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteSection(int id) async {
    try {
      String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
