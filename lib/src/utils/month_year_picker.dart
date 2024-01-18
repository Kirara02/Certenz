import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MonthYearPicker extends StatefulWidget {
  final bool enablePastDates;

  @override
  State<MonthYearPicker> createState() => _MonthYearPickerState();

  const MonthYearPicker({
    Key? key,
    this.enablePastDates = true,
  }) : super(key: key);
}

class _MonthYearPickerState extends State<MonthYearPicker> {
  late DateRangePickerController _controller;
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    // Initialize _selectedDate with the current date
    _selectedDate = DateTime.now();
    _controller = DateRangePickerController();
    _controller.displayDate = _selectedDate;
    _controller.selectedDate = _selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(16.0),
      child: SfDateRangePicker(
        controller: _controller,
        view: DateRangePickerView.year,
        showActionButtons: true,
        selectionMode: DateRangePickerSelectionMode.single,
        onSelectionChanged: _onSelectionChanged,
        onCancel: () => Navigator.pop(context),
        onSubmit: (Object? value) {
          String formattedText =
              DateFormat("MM/yy").format(_selectedDate).toString();
          dLog(formattedText);
          Navigator.pop(context, formattedText);
        },
        monthFormat: 'MMM',
        yearCellStyle: DateRangePickerYearCellStyle(
          todayTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        enablePastDates: widget.enablePastDates,
        selectionColor: AppColors.primaryColors,
      ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _selectedDate = args.value;
    });
  }
}
