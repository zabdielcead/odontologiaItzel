import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiBioPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: _createAppBar(),
          body: Stack(
            children: <Widget>[              
                
                     _crearFondo(context),
                     
                  
              
            ],
          )
        );
  }





  // AppBar
  AppBar _createAppBar() {
    return AppBar(
            title: Text('UNAM - Facultad de Odontología',  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple[300] ),),
            leading: Icon(
              Icons.school,
              color: Colors.deepPurple[300],
              size: 40,
            ),
            backgroundColor: Colors.pink[50],
        );
  }

  Widget _crearFondo(BuildContext context) {
     // media query de la pantalla 
     final size = MediaQuery.of(context).size;
      final alturaMitadPantalla = size.height * 0.4;
    return Column(
                children: <Widget>[
                          Container(
                            decoration:const BoxDecoration(
                              border: Border(
                               /*  top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                                left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                                right: BorderSide(width: 1.0, color: Color(0xFFFF000000)), */
                                bottom: BorderSide(width: 2.0, color: Color(0xFFFCE4EC)),
                              )
                            ), 
                            width: double.infinity,
                            height: alturaMitadPantalla,
                            //color: Colors.red,
                            child: Stack(
                              children: <Widget>[

                                    Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
                                        child: CustomPaint(
                                          painter: _HeaderCurvoPainter(),
                                        ),
                                    ),

                                              Center(
                                                
                                                    child: Container(
                                                          height: alturaMitadPantalla * 0.5,
                                                          width: size.width * 0.5,
                                                          //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
                                                          child: 
                                                              FittedBox(
                                                                fit: BoxFit.fitHeight,
                                                                child: CircleAvatar(
                                                                  radius: 55,
                                                                  backgroundImage: AssetImage('assets/original.jpg'),
                                                                ),
                                                              ),
                                                          
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 5.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  child: Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: Text(
                                                            'Lic. Itzel Pérez Rubalcava',
                                                            style: GoogleFonts.lobster(
                                                              textStyle: TextStyle(
                                                                color: Colors.pink[300],
                                                                fontSize: 25,
                                                                )
                                                            ),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                  
                                        
                                              
                                        
                                              /*   Positioned(
                                                      top: alturaMitadPantalla * 0.3,
                                                      right: size.width * 0.3,
                                                      child: Container(
                                                        height: alturaMitadPantalla * 0.5,
                                                        width: size.width * 0.4,
                                                        //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
                                                        child: 
                                                            CircleAvatar(
                                                              radius: 55,
                                                              backgroundImage: AssetImage('assets/original.jpg'),
                                                            ),
                                                        
                                                  ),
                                                ), */
                                              
                                      
                                    
                                    
                                    
                                    
                                    
                              ]
                            ),
                    ),
                    SizedBox(height: 30),
                    Row(
                        
                    mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                       
                          
                              Padding(
                                padding: EdgeInsets.only(right: 15.0),
                                child: Icon(
                                    
                                        Icons.work,
                                        color: Colors.pink[300],
                                        size: 25.0,
                                        semanticLabel: 'Lic. en Odontología',
                                      ),
                              ),
                          
                           
                             Text(
                                'Lic. en Odontología',  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.deepPurple[300] )
                              )
                           
                      ]

                    ),
                    SizedBox(height: 10),
                    Row(
                        
                    mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                       
                          
                              Padding(
                                padding: EdgeInsets.only(right: 15.0),
                                child: Icon(
                                    
                                        Icons.star,
                                        color: Colors.pink[300],
                                        size: 25.0,
                                        semanticLabel: 'Lic. en Odontología',
                                      ),
                              ),
                          
                           
                             Text(
                                'Especialidad en endodoncia',  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.deepPurple[300] )
                              )
                           
                      ]

                    ),
                     SizedBox(height: 10),
                    Row(
                        
                    mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                       
                          
                              Padding(
                                padding: EdgeInsets.only(right: 15.0),
                                child: Icon(
                                    
                                        Icons.star,
                                        color: Colors.pink[300],
                                        size: 25.0,
                                        semanticLabel: 'Lic. en Odontología',
                                      ),
                              ),
                          
                           
                             Text(
                                'Especialidad en ortodoncia',  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.deepPurple[300] )
                              )
                           
                      ]

                    )

                  /*  SafeArea(
                          bottom: true,
                           child: Container(
                              width: double.infinity,
                              height: size.height * 0.,
                              color: Colors.blue[100],
                          ),
                   ) */
          ]
    );
  }

  


  
}


class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
      // TODO: implement paint
      final lapiz = Paint();

      lapiz.color =Colors.deepPurple[300];
      lapiz.style = PaintingStyle.fill; // .fill .stroke
      lapiz.strokeWidth = 20;

      final path = new Path();
      // dibujar con el path y el lapiz
      path.lineTo(0,size.height*0.50);
      path.quadraticBezierTo(size.width *0.50, size.height*0.78, size.width,size.height*0.5); //genera una curva y el primer punto donde va a pasar la curva
      path.lineTo(size.width,0);
    
       
      
      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
   
      return true;
    }

}
