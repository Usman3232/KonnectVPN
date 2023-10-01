import 'package:flutter/material.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class SettingTile extends StatelessWidget {
  SettingTile(
      {super.key,
      required this.title,
      required this.icons,
      required this.onTap});

  final String title, icons;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5),
        child: Row(
          children: [
            Image.asset(icons,
                color: Colors.white.withOpacity(.8),
                height: SizeConfig.imageSizeMultiplier * 6),
            Spacing.x(3),
            Text(
              title,
              style: textTheme.bodySmall!.copyWith(
                  color: Colors.white.withOpacity(.8),
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white.withOpacity(.8),
              size: SizeConfig.imageSizeMultiplier * 4,
            )
          ],
        ),
      ),
    );
  }
}
