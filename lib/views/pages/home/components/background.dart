import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import '../../../../utils/size_config.dart';

class HomeBackground extends StatefulWidget {
  const HomeBackground({super.key, required this.child});
  final Widget child;
  @override
  State<HomeBackground> createState() => _HomeBackgroundState();
}

class _HomeBackgroundState extends State<HomeBackground> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: SizeConfig.heightMultiplier * 100,
      width: SizeConfig.widthMultiplier * 100,
      decoration: const BoxDecoration(color: Colors.black),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: SizeConfig.widthMultiplier * 2,
            right: SizeConfig.widthMultiplier * 2,
            child: Container(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.widthMultiplier * 60,
              color: const Color(0xff4CC9A7),
            ),
          ),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 80.0, sigmaY: 80.0),
            child: Container(
              height: SizeConfig.heightMultiplier * 100,
              width: SizeConfig.widthMultiplier * 100,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          widget.child
        ],
      ),
    );
  }
}
