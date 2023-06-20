// import 'package:dio/dio.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';

// import '../../model/user_model.dart';

// class DropDownWidget extends StatelessWidget {
//   const DropDownWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<UserModel>(
//       dropdownSearchDecoration: const InputDecoration(labelText: "Name"),
//       asyncItems: (String filter) async {
//         var response = await Dio().get(
//           "http://5d85ccfb1e61af001471bf60.mockapi.io/user",
//           queryParameters: {"filter": filter},
//         );
//         var models = UserModel.fromJsonList(response.data);
//         return models;
//       },
//       onChanged: (UserModel? data) {
//         print(data);
//       },
//     );
//   }
// }
