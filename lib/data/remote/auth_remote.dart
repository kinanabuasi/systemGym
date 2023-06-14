import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:systemgym/services/failures.dart';
import 'package:systemgym/services/logger.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/refresh_token.dart';
import '../../model/user_model.dart';
import '../../services/network.dart';

class AuthRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final log = logger(AuthRemoteDataSource);
  Future<Either<Failures, UserModel>> userLogin(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_player, data: data, headers: AppHeaders.headers);
      UserModel userModel = UserModel.fromJson(response.data);
      log.v(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, UserModel>> coashLogin(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_coach, data: data, headers: AppHeaders.headers);
      log.v(response.data);
      UserModel userModel = UserModel.fromJson(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, UserModel>> coashRegister(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.refresh_coach, data: data, headers: AppHeaders.headers);
      UserModel userModel = UserModel.fromJson(response.data);
      log.v(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, UserModel>> playerRegister(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.refresh_player, data: data, headers: AppHeaders.headers);
      UserModel userModel = UserModel.fromJson(response.data);
      log.v(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> coashLogout() async {
    try {
      await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.logout_coach, headers: AppHeaders.headers);

      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> playerLogout() async {
    try {
      await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_player, headers: AppHeaders.headers);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, RefreshTokenModel>> coashRefresh() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.refresh_coach, headers: AppHeaders.headers);
      log.v(response.data);
      RefreshTokenModel refreshTokenModel = RefreshTokenModel.fromJson(response.data);
      return Right(refreshTokenModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, RefreshTokenModel>> playerRefresh() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.refresh_player, headers: AppHeaders.headers);
      log.v(response.data);
      RefreshTokenModel refreshTokenModel = RefreshTokenModel.fromJson(response.data);
      return Right(refreshTokenModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, String>> playerData() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.myData_player, headers: AppHeaders.headers);
      log.v(response.data);
      return const Right('');
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, String>> coashData() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.myData_coach, headers: AppHeaders.headers);
      log.v(response.data);
      return const Right('');
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
