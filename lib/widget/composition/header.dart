import 'package:flutter/material.dart';
import 'package:time_picker_sheet/widget/provider/time_picker.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = TimePickerProvider.of(context);

    return Container(
      color: provider.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: provider.customCloseIcon ?? Icon(
                            provider.sheetCloseIcon,
                            color: provider.sheetCloseIconColor,
                          )),
                const SizedBox(width: 16),
                Text(provider.sheetTitle, style: provider.sheetTitleStyle),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
