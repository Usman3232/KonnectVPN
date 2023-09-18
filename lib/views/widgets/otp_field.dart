import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class OtpField extends StatefulWidget {
  const OtpField({Key? key, this.first, this.last, required this.controller})
      : super(key: key);
  final bool? first;
  final dynamic last;
  final TextEditingController controller;

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: SizeConfig.heightMultiplier * 9,
      width: SizeConfig.widthMultiplier * 19,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          cursorColor: AppColors.primaryClr,
          controller: widget.controller,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && widget.last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && widget.first == false) {
              FocusScope.of(context).previousFocus();
            }
            setState(() {});
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryClr,
              fontSize: SizeConfig.textMultiplier * 2.8,
              fontWeight: FontWeight.w700),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier * 2.2),
            counter: const Offstage(),
            filled: true,
            fillColor: Colors.white10,
            enabledBorder: widget.controller.text.isEmpty
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14))
                : OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryClr),
                    borderRadius: BorderRadius.circular(14)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryClr),
                borderRadius: BorderRadius.circular(14)),
          ),
        ),
      ),
    );
  }
}
