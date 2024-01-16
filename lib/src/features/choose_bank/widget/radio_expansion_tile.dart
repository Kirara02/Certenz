import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:flutter/material.dart';

class RadioExpansionTile extends StatefulWidget {
  final String initialTitle;
  final List<BankModel> options;
  final BankModel selectedOption;
  final Function(BankModel selectedBank) onChanged;

  const RadioExpansionTile({
    super.key,
    required this.initialTitle,
    required this.options,
    required this.selectedOption,
    required this.onChanged,
  });

  @override
  State<RadioExpansionTile> createState() => _RadioExpansionTileState();
}

class _RadioExpansionTileState extends State<RadioExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        leading: Image.asset(
          widget.selectedOption.image!,
          width: 60,
          height: 32,
        ),
        title: Text(widget.selectedOption.name),
        children: widget.options.map((option) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      option.image!,
                      width: 60,
                      height: 32,
                    ),
                    Text(option.name),
                  ],
                ),
                Radio<BankModel>(
                  value: option,
                  groupValue: widget.selectedOption,
                  onChanged: (value) {
                    widget.onChanged(value!);
                  },
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
