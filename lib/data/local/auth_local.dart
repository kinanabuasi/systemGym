import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:systemgym/constants/storage_keys.dart';
import 'package:systemgym/model/user_model.dart';
import 'package:systemgym/services/failures.dart';

import '../../services/logger.dart';

class AuthLocalDataSource {
  final GetStorage _box = GetStorage();
  final log = logger(AuthLocalDataSource);

  Either<Failures, UserModel> getUser() {
    try {
      UserModel userModel = UserModel.fromJson(_box.read(StorageKey.USER_DATA));
      return Right(userModel);
    } catch (e) {
      log.e(e);
      return Left(UserNotLoginFailure());
    }
  }

  Either<Failures, String> getToken() {
    try {
      String token = _box.read(StorageKey.TOKEN);
      return Right(token);
    } catch (e) {
      log.e(e);
      return Left(UserNotLoginFailure());
    }
  }

  Either<Failures, String> saveToken(String token) {
    try {
      _box.write(StorageKey.TOKEN, token);
      return Right(token);
    } catch (e) {
      log.e(e);
      return Left(SomthingWrongFailures());
    }
  }

  Either<Failures, UserModel> saveUser(Map<String, dynamic> userData) {
    try {
      _box.write(StorageKey.USER_DATA, userData);
      UserModel userModel = UserModel.fromJson(_box.read(StorageKey.USER_DATA));
      return Right(userModel);
    } catch (e) {
      log.e(e);
      return Left(UserNotLoginFailure());
    }
  }

  Either<Failures, String> saveIntro(String intro) {
    try {
      _box.write(StorageKey.INTRO, intro);
      return Right(intro);
    } catch (e) {
      log.e(e);
      return Left(SomthingWrongFailures());
    }
  }

  Either<Failures, String> getIntro() {
    try {
      String intro = _box.read(StorageKey.INTRO);
      return Right(intro);
    } catch (e) {
      log.e(e);
      return Left(SomthingWrongFailures());
    }
  }
}
