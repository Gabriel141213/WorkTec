import 'dart:collection';
import 'package:worktec_tcc/database/db.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:worktec_tcc/src/config/models/project_model.dart';

import '../../../database/db.dart';

class ListProjects extends ChangeNotifier{

  late Database db;
  List<ObjectTcc>? _object = [];

  UnmodifiableListView<ObjectTcc> get lista => UnmodifiableListView(_object!);


  void add(String nomeAluno, String nomeOrientador, String registroAluno, String registroOrientador, String tituloTrab, String palavraChave) async{ 
      if(nomeAluno != '' && nomeOrientador != '' && registroAluno != '' && registroOrientador != '' && tituloTrab != '' && palavraChave != ''){
        _object!.add(ObjectTcc(nomeAluno: nomeAluno, nomeOrientador: nomeOrientador, 
                              registroAluno: registroAluno, registroOrientador: registroOrientador, tituloTrab: tituloTrab, palavraChave: palavraChave));
      
      /* 
      newTcc(ObjectTcc newTcc) async {
        final db = await DB.instance.database;
        var res = await db.rawInsert(
          "INSERT INTO tb_curso(nome)"
          "VALUES (${'ADS'})"

          "INSERT INTO tb_materia(id_curso, nome)"
          "VALUES (${'1'}, ${'Programação em Microinformática'})"

          "INSERT INTO tb_orientador(nome, id_curso, id_materia)"
          "VALUES (${'1'}, ${newTcc.nomeOrientador}, ${'1'}, ${'1'})"

          "INSERT INTO tb_aluno(nome, id_curso, email)"
          "VALUES (${newTcc.nomeAluno}, ${'1'}, ${'exemplo@gmail.com'})"

          "INSERT INTO tb_tcc(id_orientador, id_coorientador, data, id_aluno1)"
          "VALUES (${'1'}, ${'1'}, ${'25/04/2023'}, ${'1'})"
        );
      }
      */

     notifyListeners();
      }else{
        print("Não existem dados para a adição");
      }
  }
    
  void remove (int index) {
     _object!.removeAt(index);
     notifyListeners();
  }

}