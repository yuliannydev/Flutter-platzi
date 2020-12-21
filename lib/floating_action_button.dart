import 'package:flutter/material.dart';

class FloatingAB extends StatefulWidget {
  @override
  _FloatingAB createState() => _FloatingAB();
}

class _FloatingAB extends State<FloatingAB> {
  bool _pressed = false;

  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
            Scaffold.of(context).showSnackBar(
          SnackBar(
            content: this._pressed ? Text("Agregado a tus favoritos") : Text("Eliminado de los favoritos")
            )
          );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xffd35825),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}

//AutomaticKeepAliveClientMixin investigar
//ya que este metodo tiene un problema con
//el favorito que se borra al cambiar
//de imagen
