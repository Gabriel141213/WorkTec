import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'lista_projetos.dart';

class ListOrGrid extends StatelessWidget {
  const ListOrGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Consumer<ListProjects>(
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
                    child: Material(
                        elevation: 20,
                        borderRadius: BorderRadius.circular(20),
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
                    child: Material(
                        elevation: 20,
                        borderRadius: BorderRadius.circular(20),
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
                    ),
                  )
                );
              },
            );





              } ,
              );
  }
}