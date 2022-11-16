import 'package:flutter/material.dart';
import 'package:semana12_2_sqflite_l/Modelo/usuario.dart';
import 'package:semana12_2_sqflite_l/database/db.dart';
import 'package:semana12_2_sqflite_l/vista1.dart';

class nuevo extends StatefulWidget {
  const nuevo({Key? key}) : super(key: key);

  @override
  State<nuevo> createState() => _nuevoState();
}

class _nuevoState extends State<nuevo> {

  int codigo=0;
  String nombre="";
  String correo="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuevos Usuarios'),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
