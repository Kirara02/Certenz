import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePicker extends StatefulWidget {
  DatePicker({this.tanggal_awal, this.passDate = true, super.key});
  final String? tanggal_awal;
  final bool passDate;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateRangePickerController tanggalController = DateRangePickerController();
  String tanggal_awal = "";
  late DateTime start;

  @override
  void initState() {
    tanggal_awal = widget.tanggal_awal!;
    start = DateFormat("yyyy-MM-dd").parse(tanggal_awal);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SfDateRangePicker(
            showActionButtons: true,
            showTodayButton: true,
            controller: tanggalController,
            onSubmit: (p0) {
              Navigator.pop(context, tanggal_awal);
            },
            view: DateRangePickerView.month,
            onCancel: () => Navigator.pop(context),
            onSelectionChanged: onSelectionChanged,
            selectionMode: DateRangePickerSelectionMode.single,
            selectionColor: AppColors.orange,
            backgroundColor: Colors.white,
            todayHighlightColor: AppColors.neutralN20,
            initialSelectedDate: start,
            headerHeight: 50,
            enablePastDates: widget.passDate,
          ),
        ),
      ],
    );
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value != null) {
      setState(() {
        tanggal_awal = DateFormat('yyyy-MM-dd').format(args.value).toString();
      });
    }
  }
}
