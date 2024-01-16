import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.004230750, size.height * 0.02085367);
    path_0.cubicTo(
        size.width * 0.1631572,
        size.height * -0.3834900,
        size.width * 0.6442583,
        size.height * -0.1170594,
        size.width * 0.9619333,
        size.height * -0.1170594);
    path_0.cubicTo(
        size.width * 1.279608,
        size.height * -0.1170594,
        size.width * 1.185975,
        size.height * 1.171207,
        size.width * 0.7479611,
        size.height * 0.9737371);
    path_0.cubicTo(
        size.width * 0.7479611,
        size.height * 0.9737371,
        size.width * 0.3321944,
        size.height * 0.7072669,
        size.width * 0.04311417,
        size.height * 0.9737331);
    path_0.cubicTo(
        size.width * -0.2432617,
        size.height * 1.157785,
        size.width * -0.1300972,
        size.height * 0.3248976,
        size.width * -0.004230750,
        size.height * 0.02085367);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFC5732).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
