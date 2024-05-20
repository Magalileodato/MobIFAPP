import 'package:flutter/material.dart';

//Importanto as paginas 
import 'acompanhamento_inscricao.dart';
import 'cadastro_universidade.dart';
import 'cadastro_participantes.dart';
import 'cadastro_pontos_turisticos.dart';
import 'participantes_itinerantes.dart';
import 'ponto_turistico.dart';
import 'universidades_participantes.dart';
import 'guia_apoio.dart';


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
                        'MobIFAPP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
                      const SizedBox(width: 20), // Cria um espaço em branco na horizontal
                      const Text(
                        'Cadastro dos Paricipantes',
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
                      const SizedBox(width: 20),
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
                        builder: (context) => const CadastroPontosTuristicos(title: 'Cadastro Pontos Turísticos',),
                      ),
                    );
                  },
                  title: Row(
                    children: [
                      Image.asset('images/mundo.jpg', width: 30, height: 30),
                      const SizedBox(width:20 ),
                      const Text(
                        'Cadastro Pontos Turísticos',
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
          color: Colors.blue, // Define a cor de fundo como azul
          padding: const EdgeInsets.symmetric(vertical: 10), // Adiciona um espaçamento interno
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20), // Adiciona espaço acima da imagem
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'images/livro.jpg',
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'MobIFAPP',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold, //Deixa o texto em negrito
                  color: Colors.white, // Adiciona a cor branca ao texto
                ),
                textAlign: TextAlign.center, // deixando o texto centralizado
              ),
              
              const SizedBox(height: 15), // Espaço em branco antes da linha horizontal
              const Divider(
                height: 10,
                color: Colors.white, // Ajuste da  cor e criação de uma linha orizontal 
                thickness: 4, // Ajuste a espessura da linha 
                indent: 12, // Espaçamento à esquerda
                endIndent: 10, // Espaçamento à direita
              ),
            ],
          ),
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
                  const SizedBox(width: 20),
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
                  const SizedBox(width: 20),
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
                  const SizedBox(width: 25),
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
                  const SizedBox(width: 20),
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
