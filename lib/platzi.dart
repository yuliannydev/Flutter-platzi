import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'profile.dart';

class Platzi extends StatefulWidget {
  @override
  _PlatziState createState() => _PlatziState();
}


class _PlatziState extends State<Platzi> {

//Indice de cada elemento del menu
  int indexTap = 0;

//Lista del menu
  final List<Widget> widgetsChildren = [
    Home(),
    Search(),
    Profile()
  ];

    //método que recibe el indice de los
    //iconos del menu
    //estos van de 0 en adelante
    void onTapTapped(int index){
      //llama a toda la funcionalidad del stateful
      //controla el estado del Widget
      setState(() {
        indexTap = index;
      });
    }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: widgetsChildren[indexTap],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.orange
          ),
        child: BottomNavigationBar(
          //Lo que va a suceder cuando le den tap
          onTap: onTapTapped,

          //el index que quiero que elija, sea aqui
          currentIndex: indexTap,

          //para ocultar las labels
          //lo que muestra el texto del menú
          showSelectedLabels: false,
          showUnselectedLabels: false,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
              ),
          ]

          ),
      ),

    );
  }
}
