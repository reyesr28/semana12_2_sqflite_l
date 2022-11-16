import 'package:semana12_2_sqflite_l/Modelo/usuario.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB{

  Future<Database> initializaDB() async{
    String path=await getDatabasesPath();
    return openDatabase(
      join(path,'dbusuarios.db'),
      onCreate: (database, version) async{
        await database.execute(
          'CREATE TABLE usuarios(id INTEGER PRIMARY KEY, nombre TEXT, correo TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertarUser(Usuario usu) async{
    final db=await initializaDB();
    await db.insert('usuarios', usu.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Usuario>> listAll() async{
    final db=await initializaDB();
    final List<Map<String, dynamic>> query=await db.query('usuarios');
    return query.map((e) => Usuario.fromMap(e)).toList();
  }

  Future<void> deleteUser(int id) async{
    final db=await initializaDB();
    await db.delete('usuarios',where: 'id=?',
    whereArgs: [id]);
  }

}