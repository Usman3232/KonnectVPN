import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import '../../utils/size_config.dart';

class Background extends StatefulWidget {
  const Background({super.key, required this.child});
  final Widget child;
  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 100,
      width: SizeConfig.widthMultiplier * 100,
      decoration: const BoxDecoration(color: Colors.black),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: SizeConfig.heightMultiplier * 40,
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
