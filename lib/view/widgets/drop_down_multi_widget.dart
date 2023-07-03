import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:systemgym/model/gender_model.dart';
import 'package:systemgym/model/player_model.dart';
import 'package:systemgym/model/tournament_model.dart';

import '../../constants/colors.dart';
import '../../model/Location_model.dart';
import '../../model/Sublocation_model.dart';
import '../../model/section_model.dart';

class DropDownMultiWidget extends StatefulWidget {
  final String hint;
  final Future<List<dynamic>>? asyncData;
  final List<dynamic> data;
  final Function(dynamic) onChange;
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
  State<DropDownMultiWidget> createState() => _DropDownMultiWidgetState();
}

class _DropDownMultiWidgetState extends State<DropDownMultiWidget> {
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: DropdownSearch<dynamic>.multiSelection(
          // compareFn: (i1, i2) => i1.level1 == i2.level1,
          items: widget.data,
          asyncItems: (text) => widget.asyncData ?? Future.value([]),
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                helperText: widget.hint,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Montserrat'),
                filled: true,
                border: UnderlineInputBorder(borderSide: const BorderSide(color: mainColor), borderRadius: BorderRadius.circular(10)),
                enabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: mainColor), borderRadius: BorderRadius.circular(10)),
                focusedBorder: UnderlineInputBorder(borderSide: const BorderSide(color: mainColor), borderRadius: BorderRadius.circular(10)),
                errorBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(10))),
          ),
          dropdownBuilder: (context, selectedItem) => Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor), borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 5),
                Image.asset("assets/images/yellow_check.png"),
                const SizedBox(width: 15),
                Text(
                  _selctedItem(selectedItem),
                  style: const TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Montserrat'),
                ),
              ],
            ),
          ),
          popupProps: PopupPropsMultiSelection.menu(
            interceptCallBacks: true, //important line
            itemBuilder: (ctx, item, isSelected) {
              return ListTile(
                selected: isSelected,
                title: Text(_selctedItem(item)),
                // onTap: () => myKey.currentState?.popupValidate([item]),
              );
            },
          ),
          onChanged: (value) => widget.onChange(value),
        ),
      ),
    );
  }

  String _selctedItem(dynamic item) {
    if (item is LocationModel) return item.name!.en ?? '';
    if (item is SubLocationModel) return item.name!.en ?? '';
    if (item is SectionModel) return item.name!.en ?? '';
    if (item is PlayerModel) return item.name!.en ?? '';
    if (item is TournamentModel) return item.name!.en ?? '';
    if (item is GenderModel) return item.name!.en ?? '';
    return '';
  }
}
