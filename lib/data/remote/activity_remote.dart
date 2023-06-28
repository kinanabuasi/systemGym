import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/Activity_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class ActivityRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(ActivityRemoteDataSource);

  Future<Either<Failures, ActivityModel>> activityById(Map<String, dynamic> data) async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, data: data, headers: AppHeaders.headers);
      _log.i(response.data);
      ActivityModel activityModel = ActivityModel.fromJson(response.data);
      return Right(activityModel);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }

  Future<Either<Failures, List<ActivityModel>>> allActivity() async {
    try {
      final response = await _networkManager.request(RequestMethod.post, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login_admin, headers: AppHeaders.headers);
      _log.i(response.data);
      List<ActivityModel> data = List.from(response.data.map((e) => ActivityModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
