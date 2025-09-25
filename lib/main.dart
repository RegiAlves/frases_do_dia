import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( 
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FrasesDoDia(),
    ),
  );
}
class FrasesDoDia extends StatefulWidget {
  const FrasesDoDia({super.key});

  @override
  State<FrasesDoDia> createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> { 
  
 final _frases = [
    "Você é capaz de mais do que imagina",
    "Pequenos passos todo dia levam a grandes resultados",
    "Confie no seu processo",
    "Aprender é crescer — continue tentando",
    "Cada desafio é uma oportunidade de evolução",
    "Você é mais forte do que pensa",
  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt( _frases.length );
    
    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/logo.png"),
      const SizedBox(height: 20), 
      Text(
        _fraseGerada
      ),
      const SizedBox(height: 20),   
      ElevatedButton(
          onPressed: _gerarFrase ,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
            )
          ),
          child: const Text("Nova Frase", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
        ),  
    ],
  ),
),

    );
  }
}