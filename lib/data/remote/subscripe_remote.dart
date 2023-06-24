import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/subscripe_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class SubscripeRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(SubscripeRemoteDataSource);

  Future<Either<Failures, SubscripeModel>> addSubscripe(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_player, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      SubscripeModel subscripeModel = SubscripeModel.fromJson(response.data['data']);
      return Right(subscripeModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<SubscripeModel>>> allSubscripe() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_player, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SubscripeModel> data = List.from(response.data.map((e) => SubscripeModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, Unit>> deleteSubscripe(int id) async {
    try {
      final response = await _networkManager.request(RequestMethod.put, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_player, headers: AppHeaders.headers);
      _log.i(response.data);
      return const Right(unit);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
