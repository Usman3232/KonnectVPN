import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_config.dart';

class DeviceButton extends StatelessWidget {
  const DeviceButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.isBorder = false,
    this.isShadow = true,
  }) : super(key: key);
  final VoidCallback onTap;
  final bool isBorder;
  final String title;
  final bool isShadow;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: isBorder ? Colors.black : null,
        gradient: isBorder
            ? null
            : const LinearGradient(
                stops: [2, 1],
                colors: [Color(0xff4CC9A7), Color(0xff0158F4)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
            color: isBorder ? AppColors.primaryClr : Colors.transparent,
            width: isBorder ? 1 : 0),
      ),
      child: MaterialButton(
        height: SizeConfig.heightMultiplier * 6,
        minWidth: SizeConfig.widthMultiplier * 42,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
              fontSize: SizeConfig.textMultiplier * 1.2,
              color: isBorder ? AppColors.primaryClr : Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
