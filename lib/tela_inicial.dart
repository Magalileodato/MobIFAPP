import 'package:flutter/material.dart';

// Importing pages
import 'home.dart';
import 'acompanhamento_inscricao.dart';
import 'cadastro_universidade.dart';
import 'cadastro_participantes.dart';
import 'cadastro_pontos_turisticos.dart';
import 'participantes_itinerantes.dart';
import 'ponto_turistico.dart';
import 'universidades_participantes.dart';
import 'guia_apoio.dart';
import 'servidor_temporario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'MobIFAPP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 190, 213, 243),
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: SizedBox(
          height: screenHeight * 0.9,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/livro.JPG'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'MobIFAPP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              20, // Updated font size for better visibility
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/images/home.JPG',
                      width: 55, height: 55),
                  title: const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(
                          title: 'Home',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/images/universidade.JPG',
                      width: 55, height: 55),
                  title: const Text(
                    'Cadastro das Instituições Conveniadas',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const CadastroInstituicaoConveniada(
                          title: 'Cadastro das Instituições Conveniadas',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/images/aluno.JPG',
                      width: 55, height: 55),
                  title: const Text(
                    'Cadastro Participante Mobilidade Internacional',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const CadastroMobilidadeInternacional(
                          title:
                              'Cadastro Participante Mobilidade Internacional',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/images/aluno.JPG',
                      width: 55, height: 55),
                  title: const Text(
                    'Cadastro Para Servidor Temporário - Edital & Inscrições',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ServidorTemporario(
                          title: 'Cadastro Inscrições Servidor Temporário IFRJ',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/images/mapa.JPG',
                      width: 55, height: 55),
                  title: const Text(
                    'Mobilidade Internacional Servidor / Estudante',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ParticipantesItinerantes(
                          title:
                              'Mobilidade Internacional Servidor / Estudante',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/images/mundo.JPG',
                      width: 55, height: 55),
                  title: const Text(
                    'Cadastro dos Pontos Turísticos',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CadastroPontosTuristicos(
                          title: 'Cadastro dos Pontos Turísticos',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/livro.JPG',
                  width: 55,
                  height: 55,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'MobIFAPP',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 4,
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(
                      title: 'HOME',
                    ),
                  ),
                );
              },
              title: Row(
                children: [
                  Image.asset('assets/images/home.JPG', width: 55, height: 55),
                  const SizedBox(width: 20),
                  const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ParticipantesItinerantes(
                      title: 'Instituições Conveniadas',
                    ),
                  ),
                );
              },
              title: Row(
                children: [
                  Image.asset('assets/images/universidade.JPG',
                      width: 55, height: 55),
                  const SizedBox(width: 20),
                  const Text(
                    'Instituições Conveniadas',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AcompanhamentoInscricao(
                      title: 'Acompanhamento de Inscrição',
                    ),
                  ),
                );
              },
              title: Row(
                children: [
                  Image.asset('assets/images/aluno.JPG', width: 55, height: 55),
                  const SizedBox(width: 20),
                  const Text(
                    'Acompanhamento de Inscrição',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GuiaApoio(
                      title: 'Guia de Apoio',
                    ),
                  ),
                );
              },
              title: Row(
                children: [
                  Image.asset('assets/images/aluno.JPG', width: 55, height: 55),
                  const SizedBox(width: 20),
                  const Text(
                    'Guia de Apoio',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ParticipantesItinerantes(
                      title: 'Participante em Mobilidade Internacional',
                    ),
                  ),
                );
              },
              title: Row(
                children: [
                  Image.asset('assets/images/mapa.JPG', width: 55, height: 55),
                  const SizedBox(width: 20),
                  const Text(
                    'Participante Mobilidade Internacional',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PontosTuristicos(
                      title: 'Pontos Turísticos',
                    ),
                  ),
                );
              },
              title: Row(
                children: [
                  Image.asset('assets/images/mundo.JPG', width: 55, height: 55),
                  const SizedBox(width: 20),
                  const Text(
                    'Pontos Turísticos',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
