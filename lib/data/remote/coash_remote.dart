import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:systemgym/constants/storage_keys.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/coach_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class CoachRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(CoachRemoteDataSource);
  final GetStorage _box = GetStorage();

  Future<Either<Failures, CoachModel>> addCoash(
      Map<String, dynamic> data) async {
    try {
      final String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.post,
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.coachAdd,
          data: data, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      CoachModel coachModel = CoachModel.fromJson(response.data['date']);
      return Right(coachModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<CoachModel>>> allCoach() async {
    try {
      List<CoachModel> data = [];
      final String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.get,
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.coach,
          headers: AppHeaders.authHeader(GetStorage().read(StorageKey.TOKEN)));
      for (var e in response.data['date']) {
        data.add(CoachModel.fromJson(e));
      }

      return Right(data);
    } catch (e) {
      print(e);
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<CoachModel>>> updataCoach(int id) async {
    try {
      final String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.put,
          '${ApiEndPoints.baseUrl}${ApiEndPoints.authEndpoints.coachUpdate}$id',
          headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      List<CoachModel> data =
          List.from(response.data.map((e) => CoachModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteCoash(int id) async {
    try {
      final String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.put,
          '${ApiEndPoints.baseUrl}${ApiEndPoints.authEndpoints.coachDelete}$id',
          headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, CoachModel>> employeeById(
      Map<String, dynamic> data, int id) async {
    try {
      final String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.post,
          '${ApiEndPoints.baseUrl}${ApiEndPoints.authEndpoints.coachShow}$id',
          data: data, headers: AppHeaders.authHeader(token));
      _log.i(response.data);
      CoachModel coachModel = CoachModel.fromJson(response.data);
      return Right(coachModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
