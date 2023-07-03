import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/accounting_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class AccountingRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(AccountingRemoteDataSource);

  Future<Either<Failures, AccountingModel>> addAccounting(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.accountingAdd, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      AccountingModel accountingModel = AccountingModel.fromJson(response.data['data']);
      return Right(accountingModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<AccountingModel>>> allAccounting() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.accountingShow, headers: AppHeaders.headers);
      _log.i(response.data);
      List<AccountingModel> data = List.from(response.data.map((e) => AccountingModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<AccountingModel>>> updataAccounting(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.accountingUpdate, headers: AppHeaders.headers);
      _log.i(response.data);
      List<AccountingModel> data = List.from(response.data.map((e) => AccountingModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteAccounting(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.accountingDelete, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, AccountingModel>> employeeById(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.accountingShow, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      AccountingModel accountingModel = AccountingModel.fromJson(response.data);
      return Right(accountingModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
