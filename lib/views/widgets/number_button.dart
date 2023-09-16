
import 'package:flutter/material.dart';

import '../../constants/text_styles.dart';
import '../../utils/size_config.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({
    super.key,
    this.title = "0",
    required this.onTap,
    this.isIcon = false,
  });
  final String title;
  final VoidCallback onTap;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: SizeConfig.heightMultiplier * 9,
      minWidth: SizeConfig.widthMultiplier * 24,
      onPressed: onTap,
      shape: const CircleBorder(),
      child: Container(
        child: isIcon
            ? const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              )
            : Text(
                title,
                style: AppTextStyles.headingLarge,
              ),
      ),
    );
  }
}
