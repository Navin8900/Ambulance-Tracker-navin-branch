import 'package:flutter/material.dart';
import 'package:ambulance/global/size_config.dart';

class IAppBar extends PreferredSize {
  final Widget child;
  final double height;
  final Color color;
  IAppBar({
    @required this.child,
    this.color,
    this.height = kToolbarHeight,
    bool automaticallyImplyLeading,
    IconButton leading,
  });
  @override
  Size get preferredSize => Size.fromHeight(height);
  bool centerTitle = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        color: color ?? Colors.transparent,
        child: child,
      ),
    );
  }
}
