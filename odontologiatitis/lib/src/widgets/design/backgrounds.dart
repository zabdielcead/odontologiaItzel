import 'package:flutter/material.dart';


class HeaderDiagonal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
      
    );
  }


}


class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
      // TODO: implement paint
      final lapiz = Paint();

      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // .fill .stroke
      lapiz.strokeWidth = 10;

      final path = new Path();
      // dibujar con el path y el lapiz
      path.moveTo(0,size.height*0.35);
      path.lineTo(size.width, size.height*0.30);

       path.lineTo(size.width,0);
       path.lineTo(0,0);
       path.lineTo(0, size.height*.5);
      
      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
   
      return true;
    }

}