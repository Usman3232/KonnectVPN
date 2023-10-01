import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/controllers/home.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/devices/device.dart';
import 'package:konnekt_vpn/views/pages/swap/swap.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../../utils/size_config.dart';

Color unSelectedBorderColor = Colors.white30;

class CustomShapeButton extends StatefulWidget {
  const CustomShapeButton({super.key});
  @override
  State<CustomShapeButton> createState() => _CustomShapeButtonState();
}

class _CustomShapeButtonState extends State<CustomShapeButton> {
  final cont = Get.find<HomeCont>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    double selectedBorderWidth = 3;
    double unSelectedBorderWidth = 2;

    return Obx(
      () => Stack(
        children: [
          //BOTTOM WIDGET
          Positioned(
            bottom: SizeConfig.heightMultiplier * 0.5,
            left: SizeConfig.widthMultiplier * 2,
            right: SizeConfig.widthMultiplier * 2,
            child: Container(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.widthMultiplier * 100,
              decoration: BoxDecoration(
                color: const Color(0xff171717),
                borderRadius: BorderRadius.circular(24),
              ),
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: SizeConfig.heightMultiplier * 2,
                    left: SizeConfig.widthMultiplier * 6,
                    right: SizeConfig.widthMultiplier * 6),
                child: CustomButton(
                  title: "Explore",
                  isShadow: false,
                  onTap: () {},
                ),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.heightMultiplier * 12,
            left: 0,
            right: 0,
            child: Container(
              height: SizeConfig.heightMultiplier * 40,
              width: SizeConfig.widthMultiplier * 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
          ),
          //MAIN WIDGET
          Positioned(
            bottom: SizeConfig.heightMultiplier * 10,
            left: SizeConfig.widthMultiplier * 8,
            right: SizeConfig.widthMultiplier * 8,
            child: SizedBox(
              // color: Colors.red,
              height: SizeConfig.heightMultiplier * 48,
              width: SizeConfig.widthMultiplier * 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  //TOP LEFT
                  Positioned(
                    top: SizeConfig.heightMultiplier * 4.7,
                    left: SizeConfig.widthMultiplier * 1.9,
                    child: GestureDetector(
                      onTap: () => buttonOnTap(0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          cont.selectedVal.value == 0
                              ? const BehindShadow(
                                  value: 0,
                                  offset: Offset(-15, -15),
                                )
                              : const SizedBox(),
                          CustomPaint(
                            size: Size(
                              SizeConfig.widthMultiplier * 39,
                              SizeConfig.heightMultiplier * 18.75,
                            ),
                            painter: TopLeftPainter(
                                borderColor: cont.selectedVal.value == 0
                                    ? AppColors.secondaryClr
                                    : unSelectedBorderColor,
                                borderWidth: cont.selectedVal.value == 0
                                    ? selectedBorderWidth
                                    : unSelectedBorderWidth),
                          ),
                          Positioned(
                            right: SizeConfig.widthMultiplier * 12,
                            bottom: SizeConfig.heightMultiplier * 5.5,
                            child: Column(
                              children: [
                                Image.asset(
                                  AppIcons.device,
                                  height: SizeConfig.heightMultiplier * 4,
                                  color: cont.selectedVal.value == 0
                                      ? AppColors.secondaryClr
                                      : Colors.white,
                                ),
                                Spacing.y(1),
                                Text(
                                  "Devices",
                                  style: textTheme.displaySmall!.copyWith(
                                    fontSize: SizeConfig.textMultiplier * 1.05,
                                    color: cont.selectedVal.value == 0
                                        ? AppColors.secondaryClr
                                        : Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // TOP RIGHT
                  Positioned(
                    top: SizeConfig.heightMultiplier * 4.7,
                    right: SizeConfig.widthMultiplier * 1.9,
                    child: GestureDetector(
                      onTap: () => buttonOnTap(1),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          cont.selectedVal.value == 1
                              ? const BehindShadow(
                                  value: 1,
                                  offset: Offset(15, -15),
                                )
                              : const SizedBox(),
                          CustomPaint(
                            size: Size(
                              SizeConfig.widthMultiplier * 39,
                              SizeConfig.heightMultiplier * 18.75,
                            ),
                            painter: TopRightPainter(
                                borderColor: cont.selectedVal.value == 1
                                    ? AppColors.secondaryClr
                                    : unSelectedBorderColor,
                                borderWidth: cont.selectedVal.value == 1
                                    ? selectedBorderWidth
                                    : unSelectedBorderWidth),
                          ),
                          Positioned(
                            left: SizeConfig.widthMultiplier * 12,
                            bottom: SizeConfig.heightMultiplier * 5.5,
                            child: Column(
                              children: [
                                Image.asset(
                                  AppIcons.swap,
                                  height: SizeConfig.heightMultiplier * 4,
                                  color: cont.selectedVal.value == 1
                                      ? AppColors.secondaryClr
                                      : Colors.white,
                                ),
                                Spacing.y(1),
                                Text(
                                  "Swap",
                                  style: textTheme.displaySmall!.copyWith(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05,
                                      color: cont.selectedVal.value == 1
                                          ? AppColors.secondaryClr
                                          : Colors.white54),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //BOTTOM LEFT
                  Positioned(
                    bottom: SizeConfig.heightMultiplier * 4.7,
                    left: SizeConfig.widthMultiplier * 1.9,
                    child: GestureDetector(
                      onTap: () => buttonOnTap(2),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          cont.selectedVal.value == 2
                              ? const BehindShadow(
                                  value: 2,
                                  offset: Offset(-15, 15),
                                )
                              : const SizedBox(),
                          CustomPaint(
                            size: Size(
                              SizeConfig.widthMultiplier * 39,
                              SizeConfig.heightMultiplier * 18.5,
                            ),
                            painter: BottomLeftPainter(
                                borderColor: cont.selectedVal.value == 2
                                    ? AppColors.secondaryClr
                                    : unSelectedBorderColor,
                                borderWidth: cont.selectedVal.value == 2
                                    ? selectedBorderWidth
                                    : unSelectedBorderWidth),
                          ),
                          Positioned(
                            right: SizeConfig.widthMultiplier * 12,
                            top: SizeConfig.heightMultiplier * 4.5,
                            child: Column(
                              children: [
                                Image.asset(
                                  AppIcons.history,
                                  height: SizeConfig.heightMultiplier * 4,
                                  color: cont.selectedVal.value == 2
                                      ? AppColors.secondaryClr
                                      : Colors.white,
                                ),
                                Spacing.y(1),
                                Text(
                                  "History",
                                  style: textTheme.displaySmall!.copyWith(
                                    fontSize: SizeConfig.textMultiplier * 1.05,
                                    color: cont.selectedVal.value == 2
                                        ? AppColors.secondaryClr
                                        : Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //BOTTOM RIGHT
                  Positioned(
                    bottom: SizeConfig.heightMultiplier * 4.7,
                    right: SizeConfig.widthMultiplier * 1.9,
                    child: GestureDetector(
                      onTap: () => buttonOnTap(3),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          cont.selectedVal.value == 3
                              ? const BehindShadow(
                                  value: 3,
                                  offset: Offset(15, 15),
                                )
                              : const SizedBox(),
                          CustomPaint(
                            size: Size(
                              SizeConfig.widthMultiplier * 39,
                              SizeConfig.heightMultiplier * 18.5,
                            ),
                            painter: BottomRightPainter(
                                borderColor: cont.selectedVal.value == 3
                                    ? AppColors.secondaryClr
                                    : unSelectedBorderColor,
                                borderWidth: cont.selectedVal.value == 3
                                    ? selectedBorderWidth
                                    : unSelectedBorderWidth),
                          ),
                          Positioned(
                            left: SizeConfig.widthMultiplier * 12,
                            top: SizeConfig.heightMultiplier * 4.5,
                            child: Column(
                              children: [
                                Image.asset(
                                  AppIcons.wallet,
                                  height: SizeConfig.heightMultiplier * 4,
                                  color: cont.selectedVal.value == 3
                                      ? AppColors.secondaryClr
                                      : Colors.white,
                                ),
                                Spacing.y(1),
                                Text(
                                  "Wallet",
                                  style: textTheme.displaySmall!.copyWith(
                                    fontSize: SizeConfig.textMultiplier * 1.05,
                                    color: cont.selectedVal.value == 3
                                        ? AppColors.secondaryClr
                                        : Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //CIRCLE
                  Container(
                    height: SizeConfig.heightMultiplier * 17,
                    width: SizeConfig.widthMultiplier * 34,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white30, width: 5),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.secondaryClr.withOpacity(0.4),
                              blurRadius: 100,
                              offset: cont.selectedVal.value == 0
                                  ? const Offset(-40, -40)
                                  : cont.selectedVal.value == 1
                                      ? const Offset(40, -40)
                                      : cont.selectedVal.value == 2
                                          ? const Offset(-40, 40)
                                          : cont.selectedVal.value == 3
                                              ? const Offset(40, 40)
                                              : const Offset(0, 0)),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.8),
                            blurRadius: 200,
                            offset: cont.selectedVal.value == 0
                                ? const Offset(30, 20)
                                : cont.selectedVal.value == 1
                                    ? const Offset(-20, 40)
                                    : cont.selectedVal.value == 2
                                        ? const Offset(-20, -40)
                                        : cont.selectedVal.value == 3
                                            ? const Offset(-40, -20)
                                            : const Offset(0, 0),
                          )
                        ],
                        color: AppColors.secondaryClr,
                        shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: Image.asset(AppIcons.flash),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buttonOnTap(int index) {
    cont.selectedVal.value = index;
    if (cont.selectedVal.value == 0) {
      Get.to(() => DeviceScreen());
    } else if (cont.selectedVal.value == 1) {
      Get.to(() => SwapScreen());
    }
  }
}

class TopRightPainter extends CustomPainter {
  const TopRightPainter({required this.borderColor, required this.borderWidth});
  final Color borderColor;
  final double borderWidth;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.9000000);
    path_0.quadraticBezierTo(size.width * 1.0010000, size.height * 0.9963600,
        size.width * 0.9020000, size.height * 0.9980000);
    path_0.lineTo(size.width * 0.1020000, size.height);
    path_0.quadraticBezierTo(size.width * 0.0028200, size.height * 0.9983600, 0,
        size.height * 0.9040000);
    path_0.quadraticBezierTo(size.width * 0.0005000, size.height * 0.7020000,
        size.width * 0.0020000, size.height * 0.0960000);
    path_0.quadraticBezierTo(size.width * 0.0005200, size.height * 0.0016600,
        size.width * 0.1000000, 0);
    path_0.cubicTo(
        size.width * 0.9557800,
        size.height * 0.1735200,
        size.width * 0.9983600,
        size.height * 0.8212400,
        size.width,
        size.height * 0.9000000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TopLeftPainter extends CustomPainter {
  const TopLeftPainter({required this.borderColor, required this.borderWidth});
  final Color borderColor;
  final double borderWidth;
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.9000000);
    path_0.quadraticBezierTo(size.width * -0.0010000, size.height * 0.9963600,
        size.width * 0.0980000, size.height * 0.9980000);
    path_0.lineTo(size.width * 0.8980000, size.height);
    path_0.quadraticBezierTo(size.width * 0.9971800, size.height * 0.9983600,
        size.width, size.height * 0.9040000);
    path_0.quadraticBezierTo(size.width * 0.9995000, size.height * 0.7020000,
        size.width * 0.9980000, size.height * 0.0960000);
    path_0.quadraticBezierTo(size.width * 0.9994800, size.height * 0.0016600,
        size.width * 0.9000000, 0);
    path_0.cubicTo(
        size.width * 0.0442200,
        size.height * 0.1735200,
        size.width * 0.0016400,
        size.height * 0.8212400,
        0,
        size.height * 0.9000000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomLeftPainter extends CustomPainter {
  const BottomLeftPainter(
      {required this.borderColor, required this.borderWidth});
  final Color borderColor;
  final double borderWidth;
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.1000000);
    path_0.quadraticBezierTo(size.width * -0.0010000, size.height * 0.0036400,
        size.width * 0.0980000, size.height * 0.0020000);
    path_0.lineTo(size.width * 0.8980000, 0);
    path_0.quadraticBezierTo(size.width * 0.9971800, size.height * 0.0016400,
        size.width, size.height * 0.0960000);
    path_0.quadraticBezierTo(size.width * 0.9995000, size.height * 0.2980000,
        size.width * 0.9980000, size.height * 0.9040000);
    path_0.quadraticBezierTo(size.width * 0.9994800, size.height * 0.9983400,
        size.width * 0.9000000, size.height);
    path_0.cubicTo(
        size.width * 0.0442200,
        size.height * 0.8264800,
        size.width * 0.0016400,
        size.height * 0.1787600,
        0,
        size.height * 0.1000000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomRightPainter extends CustomPainter {
  const BottomRightPainter(
      {required this.borderColor, required this.borderWidth});
  final Color borderColor;
  final double borderWidth;
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.1000000);
    path_0.quadraticBezierTo(size.width * 1.0010000, size.height * 0.0036400,
        size.width * 0.9020000, size.height * 0.0020000);
    path_0.lineTo(size.width * 0.1020000, 0);
    path_0.quadraticBezierTo(size.width * 0.0028200, size.height * 0.0016400, 0,
        size.height * 0.0960000);
    path_0.quadraticBezierTo(size.width * 0.0005000, size.height * 0.2980000,
        size.width * 0.0020000, size.height * 0.9040000);
    path_0.quadraticBezierTo(size.width * 0.0005200, size.height * 0.9983400,
        size.width * 0.1000000, size.height);
    path_0.cubicTo(
        size.width * 0.9557800,
        size.height * 0.8264800,
        size.width * 0.9983600,
        size.height * 0.1787600,
        size.width,
        size.height * 0.1000000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BehindShadow extends StatelessWidget {
  const BehindShadow({super.key, required this.offset, required this.value});
  final Offset offset;
  final int value;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    double blueRadius = 40;
    double withOpacity = 0.35;
    return SizedBox(
      height: SizeConfig.heightMultiplier * 20,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 12,
            width: SizeConfig.widthMultiplier * 35,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: AppColors.secondaryClr.withOpacity(withOpacity),
                  blurRadius: blueRadius,
                  offset: offset)
            ], shape: BoxShape.circle),
          ),
          Positioned(
            left: value == 2 || value == 1 ? 0 : null,
            right: value == 0 || value == 3 ? 0 : null,
            top: SizeConfig.heightMultiplier * 1,
            child: Container(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 10,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: AppColors.secondaryClr.withOpacity(withOpacity),
                    blurRadius: blueRadius,
                    offset: offset)
              ], shape: BoxShape.circle),
            ),
          ),
          Positioned(
            bottom: SizeConfig.heightMultiplier * 1,
            left: value == 0 || value == 3 ? 0 : null,
            right: value == 1 || value == 2 ? 0 : null,
            child: Container(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 10,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: AppColors.secondaryClr.withOpacity(withOpacity),
                    blurRadius: blueRadius,
                    offset: offset)
              ], shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}
