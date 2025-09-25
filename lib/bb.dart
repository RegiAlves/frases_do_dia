import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStateful(),
    ),
  );
}

class HomeStateful extends StatefulWidget {
  @override
  State<HomeStateful> createState() => HomeStatefulState();
}

class HomeStatefulState extends State<HomeStateful> {
  var _texto = ("Regilene Alves");
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: Container(
       child: Column(children: [
        
        ElevatedButton(
          onPressed: (){
           setState(() {
              _texto = "Curso Flutter";
           });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber
          ),
          child: const Text("Clique aqui"),
        ),
        Text("Nome: $_texto")
       ],),
      ),
    );
  }
}
