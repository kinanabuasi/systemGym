import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/employee_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class EmployeeRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(EmployeeRemoteDataSource);

  Future<Either<Failures, EmployeeModel>> addEmployee(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.employeeAdd, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      EmployeeModel employeeModel = EmployeeModel.fromJson(response.data['data']);
      return Right(employeeModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<EmployeeModel>>> allEmployee() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.employee, headers: AppHeaders.headers);
      _log.i(response.data);
      List<EmployeeModel> data = List.from(response.data.map((e) => EmployeeModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, EmployeeModel>> employeeById(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.employeeShow, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      EmployeeModel employeeModel = EmployeeModel.fromJson(response.data);
      return Right(employeeModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<EmployeeModel>>> updataEmployee(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.employeeUpdate, headers: AppHeaders.headers);
      _log.i(response.data);
      List<EmployeeModel> data = List.from(response.data.map((e) => EmployeeModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteEmployee(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.employeeDelete, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
