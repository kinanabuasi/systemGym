import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/model/gender_model.dart';
import 'package:systemgym/model/player_model.dart';
import 'package:systemgym/model/seeders_level_model.dart';
import 'package:systemgym/model/tournament_model.dart';

import '../../model/Location_model.dart';
import '../../model/Sublocation_model.dart';
import '../../model/nationality_model.dart';
import '../../model/section_model.dart';
import '../../model/status_model.dart';

class DropDownWidget<T> extends StatefulWidget {
  final String hint;
  final Future<List<T>>? asyncData;
  final List<T> data;
  final Function(T) onChange;
  final bool isLocal;
  const DropDownWidget({
    super.key,
    this.asyncData,
    required this.onChange,
    required this.hint,
    this.isLocal = false,
    this.data = const [],
  });

  @override
  State<DropDownWidget<T>> createState() => _DropDownWidgetState<T>();
}

class _DropDownWidgetState<T> extends State<DropDownWidget<T>> {
  final _openDropDownProgKey = GlobalKey<DropdownSearchState>();
  late String hint;
  @override
  void initState() {
    hint = widget.hint;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(),
    );
  }

  String _selctedItem(dynamic item) {
    if (item is LocationModel) return item.name!.en ?? '';
    if (item is SubLocationModel) return item.name!.en ?? '';
    if (item is SectionModel) return item.name!.en ?? '';
    if (item is PlayerModel) return item.name!.en ?? '';
    if (item is TournamentModel) return item.name!.en ?? '';
    if (item is GenderModel) return item.name!.en ?? '';
    if (item is SeedersIdModel) return item.name!.en ?? '';
    if (item is StatusModel) return item.name!.en ?? '';
    if (item is NationalityModel) return item.name!.en ?? '';
    return widget.hint;
  }
}
