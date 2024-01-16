import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/forms/image_bulk_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ImageSelectionWidget extends StatefulWidget {
  final List<String> imagesDocs;
  final Function(List<String> images)? onImagesSelected;

  ImageSelectionWidget({
    Key? key,
    required this.imagesDocs,
    this.onImagesSelected,
  }) : super(key: key);

  @override
  _ImageSelectionWidgetState createState() => _ImageSelectionWidgetState();
}

class _ImageSelectionWidgetState extends State<ImageSelectionWidget> {
  Future<void> _bulkImage() async {
    final List<String>? selectedImages = await showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) => ImageBulkPicker(
        title: LocaleKeys.button_choose_image.tr(),
      ),
    );

    if (selectedImages != null) {
      if (widget.onImagesSelected != null) {
        widget.onImagesSelected!(selectedImages);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppScreens.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.neutralN120),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: widget.imagesDocs.map((e) {
              final fileName = e.split('/').last;
              return IntrinsicWidth(
                child: DottedBorder(
                  dashPattern: [12, 3],
                  strokeWidth: 2,
                  color: AppColors.blue2,
                  radius: const Radius.circular(10),
                  borderType: BorderType.RRect,
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 6,
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          fileName,
                          style: const TextStyle(
                            fontSize: AppConstants.kFontSizeXS,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.imagesDocs.remove(e);
                          });
                        },
                        child: const Icon(
                          Icons.close,
                          size: 16,
                          color: AppColors.red60,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 14),
          IntrinsicWidth(
            child: GestureDetector(
              onTap: _bulkImage,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.neutralN130,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  LocaleKeys.button_choose_image.tr(),
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.black2.withOpacity(0.51),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "Jpg, jpeg, PNG",
            style: TextStyle(
              fontSize: AppConstants.kFontSizeXXS,
              color: AppColors.black2,
            ),
          ),
        ],
      ),
    );
  }
}
