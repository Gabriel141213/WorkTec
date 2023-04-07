import 'package:flutter/material.dart';

class ObjectTcc {
  String? nomeAluno;
  String? nomeOrientador;
  String? registroAluno;
  String? registroOrientador;
  String? tituloTrab;
  String? palavraChave;

  ObjectTcc({this.nomeAluno, this.nomeOrientador, this.registroAluno, this.registroOrientador, this.tituloTrab, this.palavraChave});

  ObjectTcc.fromJson(Map<String, dynamic> json) {
    nomeAluno = json['nomeAluno'];
    nomeOrientador = json['nomeOrientador'];
    registroAluno = json['registroAluno'];
    registroOrientador = json['registroOrientador'];
    tituloTrab = json['tituloTrab'];
    palavraChave = json['palavraChave'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomeAluno'] = nomeAluno;
    data['nomeOrientador'] = nomeOrientador;
    data['registroAluno'] = registroAluno;
    data['registroOrientador'] = registroOrientador;
    data['tituloTrab'] = tituloTrab;
    data['palavraChave'] = palavraChave;
    return data;
  }
}
