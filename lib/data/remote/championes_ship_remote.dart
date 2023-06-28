import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/champoines_ship_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class ChampoinesShipRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(ChampoinesShipRemoteDataSource);

  Future<Either<Failures, ChampoinesShipModel>> addChampoinesShip(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      ChampoinesShipModel champoinesShipModel = ChampoinesShipModel.fromJson(response.data['data']);
      return Right(champoinesShipModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, ChampoinesShipModel>> champoinesShipById(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      ChampoinesShipModel activityModel = ChampoinesShipModel.fromJson(response.data);
      return Right(activityModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<ChampoinesShipModel>>> allChampoinesShip() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<ChampoinesShipModel> data = List.from(response.data.map((e) => ChampoinesShipModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<ChampoinesShipModel>>> updataChampoinesShip(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<ChampoinesShipModel> data = List.from(response.data.map((e) => ChampoinesShipModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteChampoinesShip(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
