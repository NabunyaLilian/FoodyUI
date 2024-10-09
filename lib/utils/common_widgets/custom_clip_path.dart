import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var height = size.height;
    var width = size.width;
    path.lineTo(0, height);
    path.quadraticBezierTo(
        width * 0.005, height - 60, width * 0.2, height - 60);
    path.lineTo(width, height - 60);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
