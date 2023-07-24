import 'package:flutter/material.dart';
import 'package:systemgym/model/gender_model.dart';
import 'package:systemgym/model/player_model.dart';
import 'package:systemgym/model/tournament_model.dart';

import '../../model/Location_model.dart';
import '../../model/Sublocation_model.dart';
import '../../model/section_model.dart';

class DropDownMultiWidget<T> extends StatefulWidget {
  final String hint;
  final Future<List<T>>? asyncData;
  final List<T> data;
  final Function(List<T>) onChange;
  final bool isLocal;
  const DropDownMultiWidget({
    super.key,
    this.asyncData,
    required this.onChange,
    required this.hint,
    this.isLocal = false,
    this.data = const [],
  });

  @override
  State<DropDownMultiWidget<T>> createState() => _DropDownMultiWidgetState<T>();
}

class _DropDownMultiWidgetState<T> extends State<DropDownMultiWidget<T>> {
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(),
    );
  }

  String _selctedItem(T item) {
    if (item is LocationModel) return item.name!.en ?? '';
    if (item is SubLocationModel) return item.name!.en ?? '';
    if (item is SectionModel) return item.name!.en ?? '';
    if (item is PlayerModel) return item.name!.en ?? '';
    if (item is TournamentModel) return item.name!.en ?? '';
    if (item is GenderModel) return item.name!.en ?? '';
    return '';
  }
}
