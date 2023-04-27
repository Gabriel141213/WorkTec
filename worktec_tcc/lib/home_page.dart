import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worktec_tcc/init_page.dart';
import 'package:worktec_tcc/lista_projetos.dart';
import 'package:worktec_tcc/project_model.dart';

import 'confirm_remove.dart';
import 'package:worktec_tcc/grid&list.dart';

class HomePage extends StatefulWidget {

/*
  List<ObjectTcc>? object;
     HomePage() {
        object = [];
        object!.add(ObjectTcc(nomeAluno: 'Gabriel Assunção', nomeOrientador: 'Geraldo Henrique', registroAluno: '2840482223013', 
                              registroOrientador: '11111122222', tituloTrab: 'Adicionando Taxonomia ao sistema da Worktec', palavraChave: 'Indexação'));
        object!.add(ObjectTcc(nomeAluno: 'Gabriel Assunção', nomeOrientador: 'Geraldo Henrique', registroAluno: '2840482223013', 
                              registroOrientador: '11111122222', tituloTrab: 'Adicionando Taxonomia ao sistema da Worktec', palavraChave: 'Indexação'));
        object!.add(ObjectTcc(nomeAluno: 'Gabriel Assunção', nomeOrientador: 'Geraldo Henrique', registroAluno: '2840482223013', 
                              registroOrientador: '11111122222', tituloTrab: 'Adicionando Taxonomia ao sistema da Worktec', palavraChave: 'Indexação'));
        object!.add(ObjectTcc(nomeAluno: 'Gabriel Assunção', nomeOrientador: 'Geraldo Henrique', registroAluno: '2840482223013', 
                              registroOrientador: '11111122222', tituloTrab: 'Adicionando Taxonomia ao sistema da Worktec', palavraChave: 'Indexação'));
      }
  */

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    /*

     List<ObjectTcc> object;
     HomePage() {
        object = [];
        object.add(ObjectTcc(nomeAluno: 'Gabriel Assunção', nomeOrientador: 'Geraldo Henrique', registroAluno: '2840482223013', 
                              registroOrientador: '11111122222', tituloTrab: 'Adicionando Taxonomia ao sistema da Worktec', palavraChave: 'Indexação'));
        //object!.add(ObjectTcc());
      }

    */

    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                  height: size.height * 0.15,
                  width: size.width * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                              
                              decoration: InputDecoration(
                              labelText: 'Pesquisar',
                              icon: Icon(Icons.search),
                              isDense: false,
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                
                ),
                ),
                    ),
                  )
                  
              
                ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              height: size.height * 0.45,
              
          
          
          
          
          
          
            
          
            
             child: ListOrGrid(),/*Consumer<ListProjects>(
              builder: (context, objeto, child) {
                return currentWidth > 700 ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),    
                itemCount: objeto.lista.length,
                itemBuilder: (_, index) {
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Remover'),
                      ],
                    ),
                  ),
                  onDismissed: (direction) {                   
                    objeto.remove(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 245, 160, 160),
                      ),
                      height: size.height * 0.2,
                      width: size.width * 0.98, 
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.017,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [                           
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Color.fromARGB(255, 219, 80, 80),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    objeto.lista[index].tituloTrab!,
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ) 
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [                           
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Aluno: ${objeto.lista[index].nomeAluno!}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('  |  '),
                                    Text(
                                      'Orientador: ${objeto.lista[index].nomeOrientador!}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                   // Text(currentWidth.toString()),
                                   // Text(currentHeight.toString()),
                                  ],
                                ),
                              ) 
                            ],
                          )
          
                        ],
                      ),
                    ),
                  )
                );
              },
            ): 
             ListView.builder(
                itemCount: objeto.lista.length,
                itemBuilder: (_, index) {
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Remover'),
                      ],
                    ),
                  ),
                  onDismissed: (direction) {                   
                    objeto.remove(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 245, 160, 160),
                      ),
                      height: size.height * 0.2,
                      width: size.width * 0.98, 
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.017,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [                           
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Color.fromARGB(255, 219, 80, 80),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    objeto.lista[index].tituloTrab!,
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ) 
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [                           
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Aluno: ${objeto.lista[index].nomeAluno!}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('  |  '),
                                    Text(
                                      'Orientador: ${objeto.lista[index].nomeOrientador!}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                   // Text(currentWidth.toString()),
                                   // Text(currentHeight.toString()),
                                  ],
                                ),
                              ) 
                            ],
                          )
          
                        ],
                      ),
                    ),
                  )
                );
              },
            );





              } ,
              )
             */
             /*
             ListView.builder(
              itemCount: ListProjects().lista.length,
              itemBuilder: (ctxt, index) {
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Remover'),
                      ],
                    ),
                  ),
                  //onDismissed: (direction) {
                    //remove(index);
                  //},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 245, 160, 160),
                      ),
                      height: size.height * 0.2,
                      width: size.width * 0.98, 
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.017,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [                           
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Color.fromARGB(255, 219, 80, 80),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    ListProjects().lista[index].tituloTrab!,
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ) 
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [                           
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Aluno: ${ListProjects().lista[index].nomeAluno!}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text('  |  '),
                                    Text(
                                      'Orientador: ${ListProjects().lista[index].nomeOrientador!}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ) 
                            ],
                          )
          
                        ],
                      ),
                    ),
                  )
                );
              },
            ),
          
          */
                  
          
          
          
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              onPressed: (() {
                Navigator.push(context, 
                MaterialPageRoute(
                  builder: ((context) =>  Cadastro())
                )
              );
              }), 
              child: Text('Solicitar compartilhamento de trabalho'),
              ),
          )
        ],
      ),
    );
  }
}