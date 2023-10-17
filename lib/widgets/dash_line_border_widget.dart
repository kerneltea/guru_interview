import 'package:flutter/material.dart';

// 请重写DashLineBorderState的build方法，并添加相应的Widget状态周期回调处理
// dashWidth: 虚线的长度
// dashSpace: 虚线之间的间隔
// color: 虚线的颜色
// strokeWidth: 虚线的宽度
// radius: 虚线边框的圆角
class DashLineBorderWidget extends StatefulWidget {
  final double? strokeWidth;
  final Color? color;
  final double? dashWidth;
  final double? dashSpace;
  final double? radius;
  final Widget? child;

  const DashLineBorderWidget(
      {Key? key,
      this.strokeWidth,
      this.color,
      this.dashWidth,
      this.dashSpace,
      this.radius,
      this.child})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => DashLineBorderState();
}

class DashLineBorderState extends State<DashLineBorderWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox.shrink();
  }
}
