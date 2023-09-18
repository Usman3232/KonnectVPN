import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBackground extends StatelessWidget {
  final Widget child;
  final bool inAsyncCall;

  const GlassBackground({
    Key? key,
    required this.child,
    required this.inAsyncCall,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    List<Widget> widgetList = <Widget>[];
    widgetList.add(child);
    if (inAsyncCall) {
      final modal = Stack(
        alignment: Alignment.center,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: const SizedBox(),
          ),
        ],
      );
      widgetList.add(modal);
    }
    return Stack(
      children: widgetList,
    );
  }
}
