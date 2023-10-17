import 'package:flutter/material.dart';

// ClickableCard，一个可点击的卡片
// width: 卡片的宽度
// height: 卡片的高度
// child: 卡片的内容
//
// 请重写 ClickableCard 的 build 方法，并添加相应的Widget状态周期回调处理
//
// 要求：
// 在按下该卡片时，卡片的整体比例缩放到 0.8，
// 缩放时长为 150ms
// 缩放动画曲线为 Curves.easeOut
//
// 当抬起时卡片的整体比例恢复到 1.0
// 恢复时长为200ms
// 恢复的动画曲线为 Curves.easeIn
class ClickableCard extends StatefulWidget {
  final double? width;
  final double? height;
  final Widget child;

  const ClickableCard({Key? key, this.width, this.height, required this.child})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => ClickableCardState();
}

class ClickableCardState extends State<ClickableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey),
      child: widget.child
    );
  }
}
