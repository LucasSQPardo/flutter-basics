import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: ListView(
            children: [
              Task('Flutter',
                  'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Angular',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Angular_full_color_logo.svg/240px-Angular_full_color_logo.svg.png'),
              Task('Docker', 'https://www.docker.com/wp-content/uploads/2021/09/Docker-build-480x356.png.webp'),
              Task('Jasmine', ''),
              Task('get the fuck out of this shit mothafoca', ''),
              Task('Jasmine', ''),
              Task('Jasmine', ''),
            ],
          ),
          appBar: AppBar(
              leading: Container(color: Colors.white12),
              title: Text('Tarefas')),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        ));
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;

  const Task(this.nome, this.foto, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          color: Colors.black87,
          child: Stack(children: [
            Container(color: Colors.blue, height: 140),
            Column(
              children: [
                Container(
                    color: Colors.white,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            color: Colors.black26,
                            width: 72,
                            height: 100,
                            child:
                                Image.network(widget.foto, fit: BoxFit.cover)),
                        Container(
                          width: 200,
                          child: Text(widget.nome,
                              style: TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis)),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                              print(nivel);
                            },
                            child: Container(
                              width: 52,
                              height: 52,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.arrow_upward),
                                  Text(
                                    'UP',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 200,
                          child: LinearProgressIndicator(
                              color: Colors.white, value: nivel / 10)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Nivel $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ])),
    );
  }
}

class Cores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
            color: Colors.blueGrey,
            child: Stack(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 200,
                          color: Colors.redAccent,
                        ),
                        Container(
                          width: 100,
                          height: 200,
                          color: Colors.white54,
                        ),
                        Container(
                          width: 100,
                          height: 200,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 200,
                          color: Colors.lightBlueAccent,
                        ),
                        Container(
                          width: 100,
                          height: 200,
                          color: Colors.redAccent,
                        ),
                        Container(
                          width: 100,
                          height: 200,
                          color: Colors.greenAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ])));
    throw UnimplementedError();
  }
}
