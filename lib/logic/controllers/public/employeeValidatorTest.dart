// // ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AddEmployeeView extends StatelessWidget {
//   final employeeController = Get.find<EmployeeController>();
//   final formKey = GlobalKey<FormState>();
//   final idController = TextEditingController();
//   final fullNameController = TextEditingController();
//   final sectionController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Employee'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 controller: idController,
//                 decoration: InputDecoration(labelText: 'ID'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter an ID';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: fullNameController,
//                 decoration: InputDecoration(labelText: 'Full Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: sectionController,
//                 decoration: InputDecoration(labelText: 'Section'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a section';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
//                   if (formKey.currentState!.validate()) {
//                     var newEmployee = Employee(
//                       id: idController.text,
//                       fullName: fullNameController.text,
//                       section: sectionController.text,
//                     );
//                     employeeController.addEmployee(newEmployee);
//                     Get.back();
//                   }
//                 },
//                 child: Text('Save'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }