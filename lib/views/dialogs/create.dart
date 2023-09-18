import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../constants/text_styles.dart';
import '../../controllers/swap.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';
import '../widgets/auth_textfield.dart';

class CreateDialog extends StatefulWidget {
  const CreateDialog({super.key});

  @override
  State<CreateDialog> createState() => _CreateDialogState();
}

class _CreateDialogState extends State<CreateDialog> {
  final cont = Get.find<SwapCont>();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      cont.isBlur.value = true;
    });
  }

  @override
  void dispose() {
    super.dispose();
    Future.delayed(Duration.zero, () {
      cont.isBlur.value = false;
    });
  }

  TextEditingController nickName = TextEditingController();
  TextEditingController address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      child: Container(
        height: SizeConfig.heightMultiplier * 52,
        width: SizeConfig.widthMultiplier * 88,
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier * 3,
            left: SizeConfig.widthMultiplier * 5,
            right: SizeConfig.widthMultiplier * 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white12),
          color: const Color(0xff121212),
          borderRadius: BorderRadius.circular(24),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Create",
                style: AppTextStyles.bodyLarge
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            Spacing.y(2),
            Text(
              "Nick Name",
              style: AppTextStyles.bodyExtraSmall,
            ),
            Spacing.y(1),
            AuthTextField(hintText: "Nickname", controller: nickName),
            Text(
              "Wallet Option",
              style: AppTextStyles.bodyExtraSmall,
            ),
            Spacing.y(1),
            AuthTextField(hintText: "Nickname", controller: nickName),
            Text(
              "Address",
              style: AppTextStyles.bodyExtraSmall,
            ),
            Spacing.y(1),
            AuthTextField(hintText: "Address", controller: address),
            Spacing.y(4),
            CustomButton(
              title: "Add Wallet",
              isShadow: false,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
