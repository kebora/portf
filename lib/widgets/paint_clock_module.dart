import 'package:flutter/material.dart';

const Color color1 = Color.fromRGBO(1, 86, 104, 1.0);
const Color color2 = Color.fromRGBO(38, 63, 68, 1.0);
const Color color3 = Color.fromRGBO(255, 211, 105, 1.0);
const Color color4 = Color.fromRGBO(255, 241, 207, 1.0);

class PaintClockModule extends StatelessWidget {
  const PaintClockModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: ActuallyDrawClock(),
        child: Container(),
      ),
    );
  }
}

class ActuallyDrawClock extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = color2;
    Offset center = Offset(size.width, size.height / 2);
    Offset startingPoint = Offset(size.width, size.height / 2);
    Offset endPoint = Offset(size.width - 100, size.height / 2);
    Offset minuteHandEndPoint = Offset(size.width - 150, size.height / 3.6);
    Offset endingPointText = Offset(size.width / 2, size.height / 2);

    var linePaint = Paint()
      ..color = color1
      ..strokeWidth = 50
      ..strokeCap = StrokeCap.round;

    var linePaint2 = Paint()
      ..color = color1
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round;

    var linePaint3 = Paint()
      ..color = color3
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, size.height / 2.1, linePaint);
    canvas.drawCircle(center, size.height / 2.2, paint);
    canvas.drawLine(startingPoint, endingPointText, linePaint3);
    canvas.drawLine(startingPoint, endPoint, linePaint2);
    canvas.drawLine(startingPoint, minuteHandEndPoint, linePaint2);
    canvas.drawLine(startingPoint, center, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
