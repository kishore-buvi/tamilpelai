import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawingScreen(),
    );
  }
}

class DrawingScreen extends StatefulWidget {
  @override
  _DrawingScreenState createState() => _DrawingScreenState();
}

class _DrawingScreenState extends State<DrawingScreen> {
  /*List<Color> colors = [
    Colors.greenAccent,
    Colors.deepOrangeAccent,
    Colors.blueGrey
  ];*/

  @override
  Widget build(BuildContext context) {
    List<List<Offset>> _strokes = [];
    return Scaffold(
        body: Center(
      child: CustomPaint(
        painter: MyCustomPainter(strokes: _strokes),
        child: GestureDetector(
          onPanStart: (details) {
            print(
                'hello'); //here we have to get the current point of the user's and update it colour into other than black color
          },
          onPanUpdate: (details) {
            print(
                'hdfhkjfjdsfhjks'); //this widget allows us to drag and sends user's drag position
          },
          onPanEnd: (details) {
            print(
                'uuuuuuuuuuuuuuu'); //in this widget the user may tap out..that should be updated
          },
        ),
      ),
    ));
  }
}

class MyCustomPainter extends CustomPainter {
  final List<List<Offset>> strokes;

  MyCustomPainter({required this.strokes});
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path(); //this are the paths of the letter
    path_0.moveTo(size.width * 0.2640000, size.height * 0.2500000);
    path_0.lineTo(size.width * 0.2760000, size.height * 0.2600000);
    path_0.lineTo(size.width * 0.3140000, size.height * 0.2900000);
    path_0.lineTo(size.width * 0.3180000, size.height * 0.3200000);
    path_0.lineTo(size.width * 0.3200000, size.height * 0.3360000);
    path_0.lineTo(size.width * 0.3020000, size.height * 0.3960000);
    path_0.lineTo(size.width * 0.2960000, size.height * 0.3980000);
    path_0.lineTo(size.width * 0.2920000, size.height * 0.3940000);
    path_0.lineTo(size.width * 0.2560000, size.height * 0.3900000);
    path_0.lineTo(size.width * 0.2080000, size.height * 0.3820000);
    path_0.lineTo(size.width * 0.2080000, size.height * 0.3780000);
    path_0.lineTo(size.width * 0.1500000, size.height * 0.3200000);
    path_0.lineTo(size.width * 0.1480000, size.height * 0.2960000);
    path_0.lineTo(size.width * 0.1480000, size.height * 0.2840000);
    path_0.lineTo(size.width * 0.1480000, size.height * 0.2680000);
    path_0.lineTo(size.width * 0.1540000, size.height * 0.2560000);
    path_0.lineTo(size.width * 0.1900000, size.height * 0.1960000);
    path_0.lineTo(size.width * 0.1940000, size.height * 0.1920000);
    path_0.lineTo(size.width * 0.2080000, size.height * 0.1880000);
    path_0.lineTo(size.width * 0.2100000, size.height * 0.1840000);
    path_0.lineTo(size.width * 0.2420000, size.height * 0.1680000);
    path_0.lineTo(size.width * 0.3100000, size.height * 0.1440000);
    path_0.lineTo(size.width * 0.3640000, size.height * 0.1280000);
    path_0.lineTo(size.width * 0.3800000, size.height * 0.1300000);
    path_0.lineTo(size.width * 0.4300000, size.height * 0.1380000);
    path_0.lineTo(size.width * 0.4620000, size.height * 0.1620000);
    path_0.lineTo(size.width * 0.4700000, size.height * 0.1700000);
    path_0.lineTo(size.width * 0.5080000, size.height * 0.2240000);
    path_0.lineTo(size.width * 0.5240000, size.height * 0.2620000);
    path_0.lineTo(size.width * 0.5340000, size.height * 0.2920000);
    path_0.lineTo(size.width * 0.5500000, size.height * 0.3760000);
    path_0.lineTo(size.width * 0.5520000, size.height * 0.4180000);
    path_0.lineTo(size.width * 0.5600000, size.height * 0.4740000);
    path_0.lineTo(size.width * 0.5600000, size.height * 0.4940000);
    path_0.lineTo(size.width * 0.5600000, size.height * 0.5500000);
    path_0.lineTo(size.width * 0.5480000, size.height * 0.6360000);
    path_0.lineTo(size.width * 0.5460000, size.height * 0.6400000);
    path_0.lineTo(size.width * 0.5180000, size.height * 0.6940000);
    path_0.lineTo(size.width * 0.5040000, size.height * 0.7040000);
    path_0.lineTo(size.width * 0.4860000, size.height * 0.7280000);
    path_0.lineTo(size.width * 0.4180000, size.height * 0.7320000);
    path_0.lineTo(size.width * 0.3120000, size.height * 0.7500000);
    path_0.lineTo(size.width * 0.2660000, size.height * 0.7540000);
    path_0.lineTo(size.width * 0.2300000, size.height * 0.7500000);
    path_0.lineTo(size.width * 0.1740000, size.height * 0.7200000);
    path_0.lineTo(size.width * 0.1600000, size.height * 0.7080000);
    path_0.lineTo(size.width * 0.1580000, size.height * 0.7040000);
    path_0.lineTo(size.width * 0.1140000, size.height * 0.6120000);
    path_0.lineTo(size.width * 0.1140000, size.height * 0.6060000);
    path_0.lineTo(size.width * 0.0780000, size.height * 0.5100000);
    path_0.lineTo(size.width * 0.0940000, size.height * 0.4960000);
    path_0.lineTo(size.width * 0.1120000, size.height * 0.4960000);
    path_0.lineTo(size.width * 0.1340000, size.height * 0.4960000);
    path_0.lineTo(size.width * 0.2580000, size.height * 0.4860000);
    path_0.lineTo(size.width * 0.2740000, size.height * 0.4860000);
    path_0.lineTo(size.width * 0.3520000, size.height * 0.4840000);
    path_0.lineTo(size.width * 0.3980000, size.height * 0.4820000);
    path_0.lineTo(size.width * 0.4820000, size.height * 0.4780000);
    path_0.lineTo(size.width * 0.5060000, size.height * 0.4780000);
    path_0.lineTo(size.width * 0.5920000, size.height * 0.4820000);
    path_0.lineTo(size.width * 0.6060000, size.height * 0.4820000);
    path_0.lineTo(size.width * 0.6500000, size.height * 0.4780000);
    path_0.lineTo(size.width * 0.6920000, size.height * 0.4760000);
    path_0.lineTo(size.width * 0.7040000, size.height * 0.4740000);
    path_0.lineTo(size.width * 0.7120000, size.height * 0.4840000);
    path_0.lineTo(size.width * 0.7180000, size.height * 0.5040000);
    path_0.lineTo(size.width * 0.7120000, size.height * 0.5800000);
    path_0.lineTo(size.width * 0.7100000, size.height * 0.6180000);
    path_0.lineTo(size.width * 0.7100000, size.height * 0.6240000);
    path_0.lineTo(size.width * 0.7120000, size.height * 0.7300000);
    path_0.lineTo(size.width * 0.7260000, size.height * 0.7320000);
    path_0.lineTo(size.width * 0.7560000, size.height * 0.7320000);
    path_0.lineTo(size.width * 0.7740000, size.height * 0.7300000);
    path_0.lineTo(size.width * 0.7980000, size.height * 0.6700000);
    path_0.lineTo(size.width * 0.8060000, size.height * 0.6160000);
    path_0.lineTo(size.width * 0.8060000, size.height * 0.5900000);
    path_0.lineTo(size.width * 0.8140000, size.height * 0.4720000);
    path_0.lineTo(size.width * 0.8060000, size.height * 0.4440000);
    path_0.lineTo(size.width * 0.7940000, size.height * 0.3900000);
    path_0.lineTo(size.width * 0.7900000, size.height * 0.3420000);
    path_0.lineTo(size.width * 0.7820000, size.height * 0.3080000);
    path_0.lineTo(size.width * 0.7700000, size.height * 0.2420000);
    path_0.lineTo(size.width * 0.7660000, size.height * 0.2200000);
    path_0.lineTo(size.width * 0.7440000, size.height * 0.2180000);
    path_0.lineTo(size.width * 0.7080000, size.height * 0.2180000);
    path_0.lineTo(size.width * 0.7040000, size.height * 0.2180000);
    path_0.lineTo(size.width * 0.7040000, size.height * 0.2240000);
    path_0.lineTo(size.width * 0.7040000, size.height * 0.2540000);
    path_0.lineTo(size.width * 0.7000000, size.height * 0.3120000);
    path_0.lineTo(size.width * 0.7000000, size.height * 0.3480000);
    path_0.lineTo(size.width * 0.7020000, size.height * 0.3840000);
    path_0.lineTo(size.width * 0.7020000, size.height * 0.4000000);
    path_0.lineTo(size.width * 0.7020000, size.height * 0.4100000);
    path_0.lineTo(size.width * 0.6660000, size.height * 0.4100000);
    path_0.lineTo(size.width * 0.6500000, size.height * 0.4100000);
    path_0.lineTo(size.width * 0.6280000, size.height * 0.4100000);
    path_0.lineTo(size.width * 0.5740000, size.height * 0.4160000);
    path_0.lineTo(size.width * 0.5580000, size.height * 0.4180000);
    path_0.lineTo(size.width * 0.4740000, size.height * 0.4220000);
    path_0.lineTo(size.width * 0.4480000, size.height * 0.4220000);
    path_0.lineTo(size.width * 0.3960000, size.height * 0.4220000);
    path_0.lineTo(size.width * 0.3680000, size.height * 0.4220000);
    path_0.lineTo(size.width * 0.2600000, size.height * 0.4360000);
    path_0.lineTo(size.width * 0.2480000, size.height * 0.4360000);
    path_0.lineTo(size.width * 0.1340000, size.height * 0.4500000);
    path_0.lineTo(size.width * 0.1280000, size.height * 0.4520000);
    path_0.lineTo(size.width * 0.0440000, size.height * 0.4660000);
    path_0.lineTo(size.width * 0.0220000, size.height * 0.4940000);
    path_0.lineTo(size.width * 0.0240000, size.height * 0.5580000);
    path_0.lineTo(size.width * 0.0240000, size.height * 0.5720000);
    path_0.lineTo(size.width * 0.0380000, size.height * 0.6360000);
    path_0.lineTo(size.width * 0.0620000, size.height * 0.6860000);
    path_0.lineTo(size.width * 0.0820000, size.height * 0.7140000);
    path_0.lineTo(size.width * 0.1320000, size.height * 0.7680000);
    path_0.lineTo(size.width * 0.1820000, size.height * 0.7940000);
    path_0.lineTo(size.width * 0.2260000, size.height * 0.8000000);
    path_0.lineTo(size.width * 0.2980000, size.height * 0.8120000);
    path_0.lineTo(size.width * 0.3860000, size.height * 0.8080000);
    path_0.lineTo(size.width * 0.4220000, size.height * 0.7960000);
    path_0.lineTo(size.width * 0.5140000, size.height * 0.7640000);
    path_0.lineTo(size.width * 0.5440000, size.height * 0.7560000);
    path_0.lineTo(size.width * 0.5960000, size.height * 0.7180000);
    path_0.lineTo(size.width * 0.6160000, size.height * 0.6600000);
    path_0.lineTo(size.width * 0.6160000, size.height * 0.6480000);
    path_0.lineTo(size.width * 0.6380000, size.height * 0.5320000);
    path_0.lineTo(size.width * 0.6280000, size.height * 0.4920000);
    path_0.lineTo(size.width * 0.6280000, size.height * 0.4460000);
    path_0.lineTo(size.width * 0.6280000, size.height * 0.4080000);
    path_0.lineTo(size.width * 0.6260000, size.height * 0.3540000);
    path_0.lineTo(size.width * 0.6240000, size.height * 0.3480000);
    path_0.lineTo(size.width * 0.6160000, size.height * 0.2840000);
    path_0.lineTo(size.width * 0.6120000, size.height * 0.2460000);
    path_0.lineTo(size.width * 0.5980000, size.height * 0.2100000);
    path_0.lineTo(size.width * 0.5520000, size.height * 0.1520000);
    path_0.lineTo(size.width * 0.5260000, size.height * 0.1360000);
    path_0.lineTo(size.width * 0.4840000, size.height * 0.1120000);
    path_0.lineTo(size.width * 0.4620000, size.height * 0.1000000);
    path_0.lineTo(size.width * 0.4060000, size.height * 0.0900000);
    path_0.lineTo(size.width * 0.3740000, size.height * 0.0900000);
    path_0.lineTo(size.width * 0.3100000, size.height * 0.0820000);
    path_0.lineTo(size.width * 0.2260000, size.height * 0.0960000);
    path_0.lineTo(size.width * 0.2020000, size.height * 0.1000000);
    path_0.lineTo(size.width * 0.1000000, size.height * 0.1360000);
    path_0.lineTo(size.width * 0.0600000, size.height * 0.1780000);
    path_0.lineTo(size.width * 0.0600000, size.height * 0.2220000);
    path_0.lineTo(size.width * 0.0860000, size.height * 0.2620000);
    path_0.lineTo(size.width * 0.1120000, size.height * 0.3200000);
    path_0.lineTo(size.width * 0.1340000, size.height * 0.3640000);
    path_0.lineTo(size.width * 0.1540000, size.height * 0.3940000);
    path_0.lineTo(size.width * 0.2640000, size.height * 0.4220000);
    path_0.lineTo(size.width * 0.3140000, size.height * 0.4060000);
    path_0.lineTo(size.width * 0.3460000, size.height * 0.3920000);
    path_0.lineTo(size.width * 0.3720000, size.height * 0.3680000);
    path_0.lineTo(size.width * 0.3860000, size.height * 0.3200000);
    path_0.lineTo(size.width * 0.3820000, size.height * 0.2740000);
    path_0.lineTo(size.width * 0.3600000, size.height * 0.2480000);
    path_0.lineTo(size.width * 0.3440000, size.height * 0.2380000);
    path_0.lineTo(size.width * 0.3300000, size.height * 0.2300000);
    path_0.lineTo(size.width * 0.3200000, size.height * 0.2280000);
    path_0.lineTo(size.width * 0.3100000, size.height * 0.2260000);
    path_0.lineTo(size.width * 0.2960000, size.height * 0.2260000);
    path_0.lineTo(size.width * 0.2700000, size.height * 0.2300000);
    path_0.lineTo(size.width * 0.2640000, size.height * 0.2360000);
    path_0.lineTo(size.width * 0.2640000, size.height * 0.2500000);
    path_0.close();
    for (final stroke in strokes) {
      if (stroke.isNotEmpty) {
        final path = Path();
        path.moveTo(stroke.first.dx, stroke.first.dy);
        for (var i = 1; i < stroke.length; i++) {
          path.lineTo(stroke[i].dx, stroke[i].dy);
        }
      }
    }

    Paint paint_0 = new Paint() //this paint the canvas
      ..style = PaintingStyle.fill
      ..strokeWidth = 1
      ..color = Color.fromARGB(255, 4, 2, 2);
    canvas.drawPath(path_0, paint_0); //this makes the actual
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class DrawingPoint {
  Offset offset;
  Paint paint;
  DrawingPoint(this.offset, this.paint);
}
