import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class PaymentTextField extends StatelessWidget {
  const PaymentTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      controller: controller,
      cursorColor: AppColors.primaryClr,
      decoration: InputDecoration(
        isDense: true,
        isCollapsed: true,
        fillColor: Colors.white10,
        filled: true,
        prefixIcon: SizedBox(
          width: SizeConfig.widthMultiplier * 17,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: SizeConfig.widthMultiplier * 1.6),
              Image.asset(
                AppIcons.promo,
                height: SizeConfig.imageSizeMultiplier * 6,
              ),
              Spacing.x(2),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
                child: VerticalDivider(
                  width: SizeConfig.widthMultiplier * 3,
                  color: Colors.white38,
                  thickness: 1,
                ),
              )
            ],
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 5,
            vertical: SizeConfig.heightMultiplier * 2),
        hintText: "Enter Here",
        hintStyle: textTheme.bodySmall!.copyWith(color: Colors.white38),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white60),
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
    );
  }
}
