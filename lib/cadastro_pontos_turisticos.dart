import 'package:flutter/material.dart';


class CadastroPontosTuristicos extends StatelessWidget {
  const CadastroPontosTuristicos({Key? key, required String title}) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro dos Pontos Turístico'),
      ),
      body: const _CadastroPontosTuristicosState(title: 'Universidade sem Fronteiras'),
    );
  }
}

class _CadastroPontosTuristicosState extends StatefulWidget {
  final String title;

  const _CadastroPontosTuristicosState({Key? key, required this.title}) : super(key: key);

  @override
  State<_CadastroPontosTuristicosState> createState() => _CadastroPontosTuristicosStateState();
}

class _CadastroPontosTuristicosStateState extends State<_CadastroPontosTuristicosState> {
  // Criação do slogn da página
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20), // Espaço supeior da imagem
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'images/livro.jpg',
                  width: 50, //Tamanho da imagem
                  height: 50,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Universidade sem Fronteiras',
              style: TextStyle(
                fontSize: 15, // Tamanho da Fonte
                fontWeight: FontWeight.bold, //Estilo da fonte negrito
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Aliando o texto no centro
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 4, // Espesura da linha
              indent: 10,
              endIndent: 10,
            ),
          ], 
        ),
      ),
    );
  }
}

//Açoes referente a págiana 

