import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../controllers/swap.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';
import '../widgets/auth_textfield.dart';

class ImportDialog extends StatefulWidget {
  const ImportDialog({super.key});

  @override
  State<ImportDialog> createState() => _ImportDialogState();
}

class _ImportDialogState extends State<ImportDialog> {
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
  List<String> importTypeList = [
    "Pharse",
    "Keystore",
    "Private Key",
    "Address"
  ];
  int selectedImport = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: size.viewInsets.top),
      child: Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: Container(
          height: SizeConfig.heightMultiplier * 61,
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
                  "Import",
                  style: textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Spacing.y(2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address Nickname",
                    style: textTheme.displaySmall!,
                  ),
                  Spacing.y(1),
                  AuthTextField(hintText: "Nickname", controller: nickName),
                  Spacing.y(2),
                  Container(
                    height: SizeConfig.heightMultiplier * 4.5,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * .6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          4,
                          (index) => InkWell(
                            onTap: () {
                              setState(() {
                                selectedImport = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: SizeConfig.heightMultiplier * 3.6,
                              width: SizeConfig.widthMultiplier * 18.5,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: selectedImport == index
                                      ? AppColors.primaryClr
                                      : Colors.transparent),
                              child: Text(
                                importTypeList[index],
                                style: textTheme.displaySmall!.copyWith(
                                    fontSize: SizeConfig.textMultiplier * 1.05,
                                    fontWeight: FontWeight.w500,
                                    color: selectedImport == index
                                        ? Colors.white
                                        : Colors.white60),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacing.y(4),
                  Container(
                    // height: SizeConfig.heightMultiplier * 19,
                    height: 110,
                    width: SizeConfig.widthMultiplier * 88,
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.heightMultiplier * 1.5,
                        horizontal: SizeConfig.widthMultiplier * 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          maxLines: 3,
                          style: textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              isDense: true,
                              isCollapsed: true,
                              hintText: "Secret Pharse",
                              hintStyle: textTheme.displaySmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white38,
                                  fontSize: SizeConfig.textMultiplier * 1.05),
                              border: InputBorder.none),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: SizeConfig.heightMultiplier * 2.3,
                                width: SizeConfig.widthMultiplier * 13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white24),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.copy,
                                      color: Colors.white38,
                                      size:
                                          SizeConfig.imageSizeMultiplier * 2.5,
                                    ),
                                    Spacing.x(1),
                                    Text(
                                      "Paste",
                                      style: textTheme.displaySmall!.copyWith(
                                          color: Colors.white60,
                                          fontSize:
                                              SizeConfig.textMultiplier * .8),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacing.y(2),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 80,
                    child: Text(
                      "Typically 12 (sometimes 18, 24) words separated by single spaces",
                      style: textTheme.displaySmall!.copyWith(
                          fontSize: SizeConfig.textMultiplier * 1.05,
                          height: 1.9,
                          color: Colors.white54),
                    ),
                  ),
                  Spacing.y(5),
                  CustomButton(
                    title: "Import",
                    isShadow: false,
                    onTap: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
