// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:systemgym/constants/api_links.dart';

import 'package:systemgym/model/product_model.dart';
import 'package:systemgym/model/team_model.dart';
import 'package:systemgym/services/ApiServices.dart';

import '../../../data/remote/coash_remote.dart';
import '../../../model/coach_model.dart';

class homeAdminController extends GetxController {
  final CoachRemoteDataSource coachRemoteDataSource = CoachRemoteDataSource();
  List<CoachModel> allCoach = [];
  List<ProductModel> allProduct = [];
  List<TeamModel> allTeams = [];
  int count = 0;
  RxBool isLoading = true.obs;
  ApiServices _ApiServices = ApiServices();
  homeAdminController() {
    inti();
  }
  inti() async {
    await _ApiServices.AuthRequest(url: ApiEndPoints.authEndpoints.login_admin)
        .then((value) {
      if (value['error'] == null) {
        getAllProduct();
        getAllCoach();
        getAllTeams();
      } else {
        if (count > 2) {
          return;
        }
        inti();
        count++;
      }
    });
  }

  test() async {
    getAllCoach();
    getAllTeams();
    getAllProduct();
  }

  void getAllCoach() async {
    allCoach.clear();
    try {
      await _ApiServices.getRequestMap(url: ApiEndPoints.authEndpoints.coach)
          .then((value) {
        if (value['error'] == null) {
          for (var element in value['date']) {
            allCoach.add(CoachModel.fromJson(element));
          }
          update();
        } else {
          // SnackbarUtil.showError(message: value['error'].toString());
        }
      });
    } catch (e) {
      print(e);
    }
  }

  void getAllProduct() async {
    allProduct.clear();
    try {
      await _ApiServices.getRequestList(url: ApiEndPoints.authEndpoints.product)
          .then((value) {
        if (value[0]['error'] == null) {
          for (var element in value) {
            allProduct.add(ProductModel.fromJson(element));
          }
          update();
        } else {
          //   SnackbarUtil.showError(message: value[0]['error'].toString());
        }
      });
    } catch (e) {
      print(e);
    }
  }

  void getAllTeams() async {
    allTeams.clear();
    try {
      await _ApiServices.getRequestList(url: ApiEndPoints.authEndpoints.team)
          .then((value) {
        if (value[0]['error'] == null) {
          for (var element in value) {
            allTeams.add(TeamModel.fromJson(element));
          }
          update();
        } else {
          //   SnackbarUtil.showError(message: value[0]['error'].toString());
        }
      });
    } catch (e) {
      print(e);
    }
  }
}
