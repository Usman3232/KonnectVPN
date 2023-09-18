import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../utils/size_config.dart';

class CustomDropDownField extends StatelessWidget {
  CustomDropDownField({
    super.key,
    this.currentSelectedValue,
    required this.listdata,
    this.onChanged,
    this.hinttext,
    this.height,
    this.radius,
  });
  final String? hinttext;
  final String? currentSelectedValue;
  final List<String> listdata;
  Function(String?)? onChanged;
  final double? height;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: height ?? SizeConfig.heightMultiplier * 5,
      width: SizeConfig.widthMultiplier * 92,
      padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 8),
          color: Colors.white10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          iconStyleData: const IconStyleData(
              icon: Icon(
            Icons.keyboard_arrow_down_rounded,
          )),
          hint: Text(
            hinttext.toString(),
            style: textTheme.bodySmall!.copyWith(color: Colors.white38),
          ),
          items: listdata
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: textTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ))
              .toList(),
          value: currentSelectedValue,
          onChanged: onChanged,
          dropdownStyleData: DropdownStyleData(
            // padding: EdgeInsets.zero,

            decoration: BoxDecoration(
              color: const Color(0xff121212),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          // buttonStyleData: const ButtonStyleData(
          //   padding: EdgeInsets.symmetric(horizontal: 16),
          //   height: 40,
          //   width: 140,
          // ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
