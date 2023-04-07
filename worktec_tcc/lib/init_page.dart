import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worktec_tcc/lista_projetos.dart';
import 'label_texto.dart';

class Cadastro extends StatefulWidget {
  Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  late ListProjects objeto;

  @override
  Widget build(BuildContext context) {

    objeto = Provider.of<ListProjects>(context);

    var nomeAluno = TextEditingController();
    var nomeOrientador = TextEditingController();
    var registroAluno = TextEditingController();
    var registroOrientador = TextEditingController();
    var tituloTrab = TextEditingController();
    var palavraChave = TextEditingController();

    final size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
        title: const  Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                    children: [
                      TextSpan(
                        text: 'Work',
                        style: TextStyle(
                          color: Color.fromARGB(255, 235, 213, 211),
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      TextSpan(
                        text: 'Tec',
                        style: TextStyle(
                          color: Color.fromARGB(255, 122, 12, 5),
                          
                        )
                      ),
                    ]
                  )
                  
                  ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 226, 226),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButtomClass(
                  'Nome do aluno', 
                   size.height * 0.1, 
                   size.width * 0.4, 
                   nomeAluno
                ),
                TextButtomClass(
                  'Nome Orientador',
                   size.height * 0.1, 
                   size.width * 0.4,
                   nomeOrientador,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButtomClass(
                  'RA do aluno',
                   size.height * 0.1, 
                   size.width * 0.4,
                   registroAluno
                ),
                 TextButtomClass(
                  'Registro do Orientador',
                   size.height * 0.1, 
                   size.width * 0.4,
                   registroOrientador
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                TextButtomClass(
                  'Titulo do trabalho',
                   size.height * 0.1, 
                   size.width * 0.8,
                   tituloTrab
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                TextButtomClass(
                  'Palavra/Expressão chave',
                   size.height * 0.1, 
                   size.width * 0.8,
                   palavraChave
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: (() {
                    
                  }),
                  child: Text('Carregar trabalho'),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                IconButton(
                  color: Colors.red,
                  onPressed: () {
                    objeto.add(nomeAluno.text, nomeOrientador.text, registroAluno.text, 
                               registroOrientador.text, tituloTrab.text, palavraChave.text);
                    //print(ListProjects().lista);
                  },
                  icon: const Icon(Icons.send),
                )
              ],
            ),
          ),
        ],
      ),
        
      );
    
  }
}