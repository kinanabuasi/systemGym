import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/traning_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class TraningRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(TraningRemoteDataSource);

  Future<Either<Failures, TraningModel>> addTraning(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Training, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      TraningModel traningModel = TraningModel.fromJson(response.data['data']);
      return Right(traningModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<TraningModel>>> allTraning() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Training, headers: AppHeaders.headers);
      _log.i(response.data);
      List<TraningModel> data = List.from(response.data.map((e) => TraningModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<TraningModel>>> updataTraning(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Training, headers: AppHeaders.headers);
      _log.i(response.data);
      List<TraningModel> data = List.from(response.data.map((e) => TraningModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteTraning(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.Training, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
