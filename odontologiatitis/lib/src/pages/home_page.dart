import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:odontologiatitis/src/pages/contacto_page.dart';
import 'package:odontologiatitis/src/pages/mibio_page.dart';
import 'package:odontologiatitis/src/pages/servicios_page.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
 
 

  @override
  Widget build(BuildContext context) {
    final widthPantalla = MediaQuery.of(context).size.width;
    final heightPantalla = MediaQuery.of(context).size.height;

    return ChangeNotifierProvider(
          create: (_) => new _NavegacionModel(),
          child: Scaffold(
            
            //backgroundColor: Colors.pink[50],
            body: Stack(
                children: [
                  _TabsOdontologia(),
                  _Navegacion(widthPantalla: widthPantalla, heightPantalla: heightPantalla,)
                ]
              ),  
            //bottomNavigationBar: _Navegacion(),
                                   
          ),
    );
  }
}


class _TabsOdontologia extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
     final navegacionModel = Provider.of<_NavegacionModel>(context);
      return PageView(
              controller: navegacionModel.pageController,
              physics: BouncingScrollPhysics(),
            // physics: NeverScrollableScrollPhysics(), //para que no se mueva con los dedos de pestaña
              children: <Widget>[
                MiBioPage(), 
                ServiciosPage(),
                ContactoPage()
              ],
          );
  }
}

class _Navegacion extends StatelessWidget {

  const _Navegacion({
     @required this.widthPantalla,
      @required this.heightPantalla
  });

  final double widthPantalla;
  final double heightPantalla;

  @override
  Widget build(BuildContext context) {
  /*   final navegacionModel = Provider.of<_NavegacionModel>(context);
    final newsService = Provider.of<NewsService>(context); */
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return  Positioned(
                bottom: 40,
                left: widthPantalla * 0.1,
                child: Container(
                      width: widthPantalla * 0.8,
                      //height: heightPantalla* 0.1,
                      //padding: EdgeInsets.only(bottom: 10),
                      color: Colors.pink[50],
                      child: FancyBottomNavigation(
                        
                                circleColor: Colors.deepPurple[300],
                                activeIconColor: Colors.white,
                                barBackgroundColor: Colors.pink[50],
                                inactiveIconColor: Colors.pink[200],
                                textColor: Colors.deepPurple[300],
                                tabs: [
                                      TabData(iconData: Icons.school, title: ""),
                                      TabData(iconData: Icons.business, title: ""), 
                                      TabData(iconData: Icons.work, title: "")
                                  ],
                                  onTabChangedListener: (position) {
                                    navegacionModel.paginaActual =  position;
                                  },
                                  initialSelection: navegacionModel.paginaActual,
                                  
                              ),
                ),
            );


    /* return BottomNavigationBar(
      backgroundColor: Colors.pink[100],
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.deepPurple,
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual =  i,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('Mi Bio')),
        BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Servicios')),
        BottomNavigationBarItem(icon: Icon(Icons.work), title: Text('Contacto')),
      ]
    ); */
  }
}


class _NavegacionModel with ChangeNotifier{
  int _paginaActual = 0;
  PageController _pageController = new PageController( );


  int get paginaActual => this._paginaActual;
  
  set paginaActual(int valor){
    this._paginaActual = valor;
    _pageController.animateToPage(valor, duration: Duration(milliseconds: 1000), curve: Curves.easeInOutQuint);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
}


