import 'package:flutter/material.dart';

//Importanto as paginas 
import 'acompanhamento_inscricao.dart';
import 'cadastro_universidade.dart';
import 'cadastro_participantes.dart';
import 'cadastro_pontos_turisticos.dart';
import 'participantes_itinerantes.dart';
import 'pontos_turisticos.dart';
import 'universidades_participantes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Universidade sem Fronteiras'),
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
                        radius: 30,
                        backgroundImage: AssetImage('images/livro.jpg'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Universidade sem Fronteira',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    // Ações ainda que devem ser feitas para acesso a outra tela
                  },
                  title: Row(
                    children: [
                      Image.asset('images/home.jpg', width: 30, height: 30),
                      const SizedBox(width: 20),
                      const Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

                ListTile(
                  onTap: () {
                    // Realiza a ação de navegar para  a nova página quando o item for tocado
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                       builder: (context) => const CadastroUniversidade(title: 'Cadastro das Universidades',),
                      ),
                    );
                  },
                  title: Row(
                    children: [
                      Image.asset('images/universidade.jpg', width: 30, height: 30),
                      const SizedBox(width: 20),
                      const Text(
                        'Cadastro das Universidades',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

                ListTile(
                  onTap: () {
                     // Realiza a ação de navegar para  a nova página quando o item for tocado
                        Navigator.push(
                        context,
                          MaterialPageRoute(
                            builder: (context) => const CadastroParticipantes(title: 'Cadastro dos Participantes',),// Esta linha adiona um titulo a pagina que será aberta
                          ),
                        );
                  },
                  title: Row(
                    children: [
                      Image.asset('images/aluno.jpg', width: 30, height: 30),
                      const SizedBox(width: 45),
                      const Text(
                        'Cadastro dos Participantes',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

                ListTile(
                  onTap: () {
                    // Realiza a ação de navegar para  a nova página quando o item for tocado
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ParticipantesItinerantes(title: 'Participantes Itinerantes',),
                        ),
                      );
                  },
                  title: Row(
                    children: [
                      Image.asset('images/mapa.jpg', width: 30, height: 30),
                      const SizedBox(width: 40),
                      const Text(
                        'Participantes Itinerantes',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

                ListTile(
                  onTap: () {
                    // Realiza a ação de navegar para  a nova página quando o item for tocado
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CadastroPontosTuristicos(title: 'Cadastro dos Pontos Turísticos',),
                      ),
                    );
                  },
                  title: Row(
                    children: [
                      Image.asset('images/mundo.jpg', width: 30, height: 30),
                      const SizedBox(width:30 ),
                      const Text(
                        'Cadastro dos Pontos Turísticos',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Código referente à tela principal

      //Estrutura do slong da tela
      body: Center(
        child: ListView(
          children: <Widget>[
             Container(
              margin: const EdgeInsets.only(top: 20), // Adiciona espaço acima da imagem
              child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'images/livro.jpg',
                width: 50,
                height: 50,
              ),
            ),
          ),
            const SizedBox(height: 5),
            const Text(
              'Universidade sem Fronteiras',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold, //Deixa o texto em negrito
                 color: Colors.black, // Adiciona a cor preta ao texto
              ),
               textAlign: TextAlign.center, // deixando o texto centralizado
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black, // Ajuste da  cor e criação de uma linha orizontal 
              thickness: 4, // Ajuste a espessura da linha 
              indent: 10, // Espaçamento à esquerda
              endIndent: 10, // Espaçamento à direita
            ),

           //Estrutura da tela principal 

            ListTile(
              title: Row(
                children: [
                  Image.asset('images/home.jpg', width: 30, height: 30),
                  const SizedBox(width: 20),
                  const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

            ListTile(
              onTap: () {
                // Ações que devem ser feitas quando o item é tocado
              },
              title: Row(
                children: [
                  Image.asset('images/universidade.jpg', width: 30, height: 30),
                  const SizedBox(width: 30),
                  const Text(
                    'Universidades Participantes',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

            ListTile(
              onTap: () {
                // Realiza a ação de navegar para  a nova página quando o item for tocado
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                       builder: (context) => const UniversidadesParticipantes(title: 'Universidades Participantes',),
                    ),
                  );
              },
              title: Row(
                children: [
                  Image.asset('images/aluno.jpg', width: 30, height: 30),
                  const SizedBox(width: 45),
                  const Text(
                    'Acompanhamento de Inscrição',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

            ListTile(
              onTap: () {
                // Realiza a ação de ir para outra página quando o item é tocado
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const AcompanhamentoInscricao(title: 'Acompanhamento de Inscrição')),
                );
              },
              title: Row(
                children: [
                  Image.asset('images/mundo.jpg', width: 30, height: 30),
                  const SizedBox(width: 45),
                  const Text(
                    'Participantes Itinerantes',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

            ListTile(
              onTap: () {
                // Realiza a ação de navegar para  a nova página quando o item for tocado
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                       builder: (context) => const ParticipantesItinerantes(title: 'Cadastro das Universidades',),
                    ),
                  );
              },

              title: Row(
                children: [
                  Image.asset('images/mundo.jpg', width: 30, height: 30),
                  const SizedBox(width: 40),
                  const Text(
                    'Pontos Turísticos',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Espaço de 20 pixels entre os títulos

            ListTile(
              onTap: () {
                // Realiza a ação de navegar para  a nova página quando o item for tocado
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                       builder: (context) => const PontosTuristicos(title: 'Pontos Turistícos',),
                    ),
                  );    
              }
            )
          ],
        ),
      ),
    );
  }
}
