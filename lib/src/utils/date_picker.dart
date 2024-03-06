import 'package:certenz/src/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SelectDatePicker extends StatefulWidget {
  const SelectDatePicker(
      {this.tanggal_awal,
      this.passDate = true,
      this.rangePicker = false,
      super.key});
  final String? tanggal_awal;
  final bool passDate;
  final bool rangePicker;

  @override
  State<SelectDatePicker> createState() => _SelectDatePickerState();
}

class _SelectDatePickerState extends State<SelectDatePicker> {
  late DateTime start;
  late DateTime end;
  late DateRangePickerController tanggalController;
  late DateRangePickerSelectionMode selectionMode;

  @override
  void initState() {
    start = DateFormat("yyyy-MM-dd").parse(widget.tanggal_awal!);
    end = start;
    tanggalController = DateRangePickerController();
    selectionMode = widget.rangePicker
        ? DateRangePickerSelectionMode.range
        : DateRangePickerSelectionMode.single;
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
              context.pop(
                {
                  'start_date':
                      DateFormat('yyyy-MM-dd').format(start).toString() ?? "",
                  'end_date':
                      DateFormat('yyyy-MM-dd').format(end).toString() ?? "",
                },
              );
            },
            view: DateRangePickerView.month,
            onCancel: () => Navigator.pop(context),
            onSelectionChanged: onSelectionChanged,
            selectionMode: selectionMode,
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
    if (widget.rangePicker &&
        args.value != null &&
        args.value.startDate != null &&
        args.value.endDate != null) {
      setState(() {
        start = args.value.startDate!;
        end = args.value.endDate;
      });
    } else if (!widget.rangePicker && args.value != null) {
      dLog(args.value);
      setState(() {
        start = args.value!;
      });
    }
  }
}
