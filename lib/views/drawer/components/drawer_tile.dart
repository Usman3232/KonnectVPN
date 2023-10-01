import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import '../../../utils/spacing.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile(
      {super.key,
      required this.title,
      this.isSignOut = false,
      required this.onTap,
      required this.icons});

  final String title;
  final String icons;
  final bool isSignOut;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.7),
        child: Row(
          children: [
            Image.asset(
              icons,
              height: SizeConfig.imageSizeMultiplier * 5,
            ),
            Spacing.x(3),
            Text(
              title,
              style: textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: isSignOut ? Colors.white : Colors.white38),
            )
          ],
        ),
      ),
    );
  }
}
