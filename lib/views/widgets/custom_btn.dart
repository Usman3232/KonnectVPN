import 'package:flutter/material.dart';
import '../../utils/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.isBorder = false,
  }) : super(key: key);
  final VoidCallback onTap;
  final bool isBorder;
  final String title;
  @override
  Widget build(BuildContext context) {
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
            color: isBorder ? const Color(0xff434545) : Colors.transparent,
            width: isBorder ? 1 : 0),
        boxShadow: isBorder
            ? null
            : [
                BoxShadow(
                  color: const Color(0xff4CC9A7).withOpacity(.15),
                  // spreadRadius: -20,
                  blurRadius: 18,
                  offset: const Offset(0, 24),
                ),
              ],
      ),
      child: MaterialButton(
        height: SizeConfig.heightMultiplier * 6,
        minWidth: SizeConfig.widthMultiplier * 92,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
              fontSize: SizeConfig.textMultiplier * 1.8,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
