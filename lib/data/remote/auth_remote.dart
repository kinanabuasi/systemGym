import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:systemgym/model/auth_model.dart';
import 'package:systemgym/services/failures.dart';
import 'package:systemgym/services/logger.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../constants/storage_keys.dart';
import '../../model/refresh_token.dart';
import '../../services/network.dart';
import '../local/auth_local.dart';

class AuthRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final AuthLocalDataSource _localAuth = AuthLocalDataSource();
  final GetStorage _box = GetStorage();
  final log = logger(AuthRemoteDataSource);

  Future<Either<Failures, AuthModel>> adminLogin(
      Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post,
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin,
          data: data, headers: AppHeaders.headers);
      AuthModel authModel = AuthModel.fromJson(response.data);
      _localAuth.saveUser(authModel.user!.toJson());
      _localAuth.saveToken(authModel.accessToken!);
      log.v(response.data);
      return Right(authModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  // Future<Either<Failures, UserModel>> adminLogin(Map<String, dynamic> data) async {
  //   try {
  //     final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_coach, data: data, headers: AppHeaders.headers);
  //     log.v(response.data);
  //     UserModel userModel = UserModel.fromJson(response.data);
  //     return Right(userModel);
  //   } catch (e) {
  //     return Left(SomthingWrongFailures());
  //   }
  // }

  // Future<Either<Failures, UserModel>> adminRegister(Map<String, dynamic> data) async {
  //   try {
  //     final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.refresh_coach, data: data, headers: AppHeaders.headers);
  //     UserModel userModel = UserModel.fromJson(response.data);
  //     log.v(response.data);
  //     return Right(userModel);
  //   } catch (e) {
  //     return Left(SomthingWrongFailures());
  //   }
  // }

  // Future<Either<Failures, UserModel>> playerRegister(Map<String, dynamic> data) async {
  //   try {
  //     final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.refresh_player, data: data, headers: AppHeaders.headers);
  //     UserModel userModel = UserModel.fromJson(response.data);
  //     log.v(response.data);
  //     return Right(userModel);
  //   } catch (e) {
  //     return Left(SomthingWrongFailures());
  //   }
  // }

  Future<Either<Failures, Unit>> adminLogout() async {
    try {
      await _networkManager.request(RequestMethod.post,
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.logout_admin,
          headers: AppHeaders.headers);

      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  // Future<Either<Failures, Unit>> playerLogout() async {
  //   try {
  //     await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
  //     return const Right(unit);
  //   } catch (e) {
  //     return Left(SomthingWrongFailures());
  //   }
  // }

  Future<Either<Failures, RefreshTokenModel>> adminRefresh() async {
    try {
      final String token = _box.read(StorageKey.TOKEN);
      final response = await _networkManager.request(RequestMethod.post,
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.refresh_admin,
          headers: AppHeaders.authHeader(token));
      log.v(response.data);
      RefreshTokenModel refreshTokenModel =
          RefreshTokenModel.fromJson(response.data);
      return Right(refreshTokenModel);
    } catch (e) {
      print(e);
      return Left(SomthingWrongFailures());
    }
  }

  // Future<Either<Failures, RefreshTokenModel>> playerRefresh() async {
  //   try {
  //     final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.refresh_player, headers: AppHeaders.headers);
  //     log.v(response.data);
  //     RefreshTokenModel refreshTokenModel = RefreshTokenModel.fromJson(response.data);
  //     return Right(refreshTokenModel);
  //   } catch (e) {
  //     return Left(SomthingWrongFailures());
  //   }
  // }

  // Future<Either<Failures, String>> playerData() async {
  //   try {
  //     final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.user_profile_admin, headers: AppHeaders.headers);
  //     log.v(response.data);
  //     return const Right('');
  //   } catch (e) {
  //     return Left(SomthingWrongFailures());
  //   }
  // }

  Future<Either<Failures, String>> adminData() async {
    try {
      final response = await _networkManager.request(RequestMethod.post,
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.user_profile_admin,
          headers: AppHeaders.headers);
      log.v(response.data);
      return const Right('');
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
