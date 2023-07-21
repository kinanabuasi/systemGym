import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../../constants/headers.dart';
import '../../model/Sublocation_model.dart';
import '../../services/failures.dart';
import '../../services/logger.dart';
import '../../services/network.dart';

class SublocationRemoteDataSource {
  final NetworkManager _networkManager = NetworkManager(Dio());
  final _log = logger(SublocationRemoteDataSource);

  Future<Either<Failures, List<SubLocationModel>>> allSublocation() async {
    try {
      final response = await _networkManager.request(RequestMethod.get, ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.subLocation, headers: AppHeaders.headers);
      _log.i(response.data);
      List<SubLocationModel> data = List.from(response.data.map((e) => SubLocationModel.fromJson(e)));
      return Right(data);
    } catch (e) {
      return Left(SomthingWrongFailures());
    }
  }
}
