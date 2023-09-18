import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../utils/size_config.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key, required this.value});
  final int value;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 3,
          width: SizeConfig.widthMultiplier * 73,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white24),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: SizeConfig.heightMultiplier * 3,
          width: _sliderWidth(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.primaryClr,
          ),
          alignment: Alignment.center,
          child: Text(
            "$value%",
            style: textTheme.displaySmall!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.textMultiplier * 1.05,
              color: Colors.white.withOpacity(.8),
            ),
          ),
        )
      ],
    );
  }

  _sliderWidth() {
    if (value >= 0 && value < 10 || value < 0) {
      return SizeConfig.widthMultiplier * 7.3;
    }
    if (value >= 10 && value < 20) {
      return SizeConfig.widthMultiplier * 14.6;
    }
    if (value >= 20 && value < 30) {
      return SizeConfig.widthMultiplier * 21.9;
    }
    if (value >= 30 && value < 40) {
      return SizeConfig.widthMultiplier * 29.2;
    }
    if (value >= 40 && value < 50) {
      return SizeConfig.widthMultiplier * 36.5;
    }
    if (value >= 50 && value < 60) {
      return SizeConfig.widthMultiplier * 43.8;
    }
    if (value >= 60 && value < 70) {
      return SizeConfig.widthMultiplier * 51.1;
    }
    if (value >= 70 && value < 80) {
      return SizeConfig.widthMultiplier * 58.4;
    }
    if (value >= 80 && value < 90) {
      return SizeConfig.widthMultiplier * 65.7;
    }
    if (value >= 90 && value < 95) {
      return SizeConfig.widthMultiplier * 69.5;
    }
    if (value > 95) {
      return SizeConfig.widthMultiplier * 73;
    } else {
      return SizeConfig.widthMultiplier * 73;
    }
  }
}
