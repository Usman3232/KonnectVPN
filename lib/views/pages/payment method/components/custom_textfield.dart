
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class PaymentMethodTextField extends StatelessWidget {
  PaymentMethodTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.isRequired = true,
    this.isObsecure = false,
    this.keyboardType,
  });

  final String title, hintText;
  final TextEditingController controller;
  final bool isRequired;
  final bool isObsecure;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: textTheme.displaySmall!.copyWith(
                  fontSize: SizeConfig.textMultiplier * 1.05,
                  color: Colors.white60),
            ),
            isRequired
                ? Text(
                    "*",
                    style: textTheme.displaySmall!.copyWith(
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: AppColors.errorClr),
                  )
                : const SizedBox(),
          ],
        ),
        Spacing.y(1),
        TextFormField(
          obscureText: isObsecure,
          obscuringCharacter: "*",
          cursorColor: AppColors.primaryClr,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            isDense: true,
            isCollapsed: true,
            fillColor: Colors.white10,
            filled: true,
            contentPadding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 5,
                vertical: SizeConfig.heightMultiplier * 2),
            hintText: hintText,
            hintStyle: textTheme.bodySmall!.copyWith(color: Colors.white38),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(14),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: AppColors.primaryClr,
              ),
            ),
          ),
          style: textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w500),
        ),
        Spacing.y(1),
      ],
    );
  }
}
