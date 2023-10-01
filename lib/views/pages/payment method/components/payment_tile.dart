import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/subcription.dart';
import '../../../../utils/size_config.dart';

class PaymentMethodTile extends StatelessWidget {
  PaymentMethodTile({
    super.key,
    required this.title,
    required this.onTap,
    required this.isCheck,
    required this.icon,
  });

  final String title, icon;
  final VoidCallback onTap;
  final bool isCheck;

  final cont = Get.find<SubcriptionCont>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 2),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white10,
              ),
              alignment: Alignment.center,
              child: Image.asset(
                icon,
                height: SizeConfig.imageSizeMultiplier * 4.5,
              ),
            ),
            Text(
              title,
              style:
                  textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isCheck ? const Color(0xff44CCCC) : Colors.white24,
                ),
              ),
              alignment: Alignment.center,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isCheck ? const Color(0xff44CCCC) : Colors.transparent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
