import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';

import '../../utils/size_config.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType,
    this.readOnly = false,
    this.onTap,
    this.isfilled = true,
  });
  final String hintText;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final bool readOnly;
  final bool isfilled;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
      child: TextField(
        controller: widget.controller,
        cursorColor: AppColors.primaryClr,
        keyboardType: widget.keyboardType,
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          // enabled: widget.enabled,
          prefixIcon: widget.hintText == "Select residence"
              ? SizedBox(
                  width: SizeConfig.widthMultiplier * 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: SizeConfig.widthMultiplier * 1.6),
                      const Icon(
                        Icons.location_on_rounded,
                        color: Colors.white38,
                      ),
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
                )
              : widget.hintText == "Select country"
                  ? Container(
                      width: SizeConfig.widthMultiplier * 6,
                      margin: EdgeInsets.symmetric(
                          vertical: SizeConfig.widthMultiplier * 3.8,
                          horizontal: SizeConfig.widthMultiplier * 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white38),
                    )
                  : null,
          suffixIcon: !widget.readOnly
              ? null
              : Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: SizeConfig.imageSizeMultiplier * 4,
                ),
          isCollapsed: true,
          fillColor: Colors.white10,
          filled: widget.isfilled,
          contentPadding: EdgeInsets.only(
            left: SizeConfig.widthMultiplier * 5,
            right: !widget.readOnly ? SizeConfig.widthMultiplier * 5 : 0,
            top: SizeConfig.heightMultiplier * 2,
            bottom: SizeConfig.heightMultiplier * 2,
          ),
          hintText: widget.hintText,
          hintStyle: textTheme.bodySmall!.copyWith(color: Colors.white38),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: widget.isfilled ? Colors.transparent : Colors.white10),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: AppColors.primaryClr,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: AppColors.errorClr,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: AppColors.errorClr,
            ),
          ),
        ),
        style: textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
