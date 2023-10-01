import 'package:flutter/material.dart';

import '../../../../../utils/size_config.dart';

class PinButton extends StatelessWidget {
  const PinButton({
    super.key,
    this.title = "0",
    required this.onTap,
    this.isDecoration = true,
    this.isIcon = false,
  });
  final String title;
  final VoidCallback onTap;
  final bool isDecoration;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: SizeConfig.heightMultiplier * 12,
      width: SizeConfig.widthMultiplier * 24,
      decoration: isDecoration
          ? const BoxDecoration(color: Colors.white10, shape: BoxShape.circle)
          : null,
      child: MaterialButton(
        onPressed: onTap,
        shape: const CircleBorder(),
        child: isIcon
            ? const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              )
            : Text(
                title,
                style: textTheme.headlineLarge!,
              ),
      ),
    );
  }
}
