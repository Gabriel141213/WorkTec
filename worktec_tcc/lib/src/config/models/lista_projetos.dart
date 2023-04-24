import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:worktec_tcc/src/config/models/project_model.dart';

class ListProjects extends ChangeNotifier{

  List<ObjectTcc>? _object = [];

  UnmodifiableListView<ObjectTcc> get lista => UnmodifiableListView(_object!);

  void add(String nomeAluno, String nomeOrientador, String registroAluno, String registroOrientador, String tituloTrab, String palavraChave) { 
      if(nomeAluno != '' && nomeOrientador != '' && registroAluno != '' && registroOrientador != '' && tituloTrab != '' && palavraChave != ''){
        _object!.add(ObjectTcc(nomeAluno: nomeAluno, nomeOrientador: nomeOrientador, 
                              registroAluno: registroAluno, registroOrientador: registroOrientador, tituloTrab: tituloTrab, palavraChave: palavraChave));
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