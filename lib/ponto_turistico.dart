import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PontosTuristicos(title: 'MobIFAAP'),
  ));
}

class PontosTuristicos extends StatefulWidget {
  const PontosTuristicos({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _PontosTuristicosState createState() => _PontosTuristicosState();
}

class _PontosTuristicosState extends State<PontosTuristicos> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    RegiaoMetropolitana(),
    RegiaoDosLagos(),
    RegiaoSulFluminense(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove o botão de voltar
        title: GestureDetector(
          onTap: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 8), // Espaçamento entre o ícone e o texto
              Text(widget.title),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Região Metropolitana',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Região dos Lagos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Região Sul Fluminense',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class RegiaoMetropolitana extends StatelessWidget {
  const RegiaoMetropolitana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove o botão de voltar
        title: Center(
          child: Text(
            'Região Metropolitana',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: RegiaoMetropolitanaPage(),
    );
  }
}

class RegiaoDosLagos extends StatelessWidget {
  const RegiaoDosLagos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove o botão de voltar
        title: Center(
          child: Text(
            'Região dos Lagos',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: RegiaoDosLagosTab(),
    );
  }
}

class RegiaoSulFluminense extends StatelessWidget {
  const RegiaoSulFluminense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove o botão de voltar
        title: Center(
          child: Text(
            'Região Sul Fluminense',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: RegiaoSulFluminenseTab(),
    );
  }
}

class RegiaoMetropolitanaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Column(
            children: [
              Text(
                'Rio de Janeiro - Cristo Redentor',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/cristo.jpg', width: 400, height: 400),
              const Text(
                'Uma das Sete Maravilhas do Mundo Moderno.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Rio de Janeiro - Pão de Açúcar',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/paodeacucar.jpg',
                  width: 400, height: 400),
              const Text(
                'Oferece uma vista panorâmica da cidade',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Rio de Janeiro - Porto Maravilha - Roda Gigante',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/portoo.png', width: 400, height: 400),
              const Text(
                'Ela está localizada na região do Porto Maravilha, oferecendo uma vista panorâmica incrível da cidade do Rio de Janeiro, incluindo a Baía de Guanabara, o Pão de Açúcar, o Cristo Redentor e outros pontos turísticos famosos.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Rio de Janeiro - Estádio do Maracanã',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/maracana.JPG',
                  width: 400, height: 400),
              const Text(
                'O Estádio do Maracanã é um dos estádios de futebol mais famosos do mundo e um ícone da cidade do Rio de Janeiro. Inaugurado em 1950 para sediar a Copa do Mundo da FIFA, o estádio já recebeu grandes eventos esportivos e musicais ao longo dos anos.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        // Adicione mais itens à lista, se necessário
      ],
    );
  }
}

class RegiaoDosLagosTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Column(
            children: [
              Text(
                'Armação dos Búzios - Rua das Pedras',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/ruadaspedras.jpg',
                  width: 400, height: 400),
              Text(
                'Famosa por sua vida noturna e lojas.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Armação dos Búzios - Praia de Geribá',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/praiadegeribabuzios.JPG',
                  width: 400, height: 400),
              Text(
                'Famosa por suas ondas fortes e ambiente jovem.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Arraial do Cabo - Praia do Forno',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/praiadofornoarraial.JPG',
                  width: 400, height: 400),
              Text(
                'A Praia do Forno é uma bela praia de areias brancas e águas cristalinas em Arraial do Cabo. Para chegar até ela, é possível fazer uma trilha curta com uma vista espetacular ou pegar um barco no cais do centro da cidade. É um lugar ideal para relaxar e aproveitar a natureza.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Armação dos Búzios - Praia da Ferradura',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/praiadaferradura.JPG',
                  width: 400, height: 400),
              Text(
                'Conhecida por sua forma de ferradura e águas calmas.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Cabo Frio - Ilha do Japonês',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/fortecabofrio.jpg',
                  width: 400, height: 400),
              Text(
                'Uma das praias mais lindas da cidade.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Arraial do Cabo - Praia do Farol',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/praiadofarol-arraialdocabo.JPG',
                  width: 400, height: 400),
              Text(
                'Localizada em Arraial do Cabo, é uma das praias mais bonitas do Brasil, conhecida por suas águas cristalinas e areia branca. O acesso à praia é feito somente por barco, e é necessário autorização prévia do ICMBio.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Búzios-Praia do João Fernandes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/praia-de-joao-fernandes.jpg',
                  width: 400, height: 400),
              Text(
                'Praia calma e de águas claras, ideal para mergulho e prática de esportes náuticos.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Búzios-Praia de Geribá',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/praiadegeribabuzios.JPG',
                  width: 400, height: 400),
              Text(
                'Famosa pelas suas ondas ideais para o surf.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Búzios-Orla Bardot',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/OrlaBardot-buzios.jpg',
                  width: 400, height: 400),
              Text(
                'A Orla Bardot é uma famosa avenida em Búzios, localizada na península da Armação dos Búzios, no estado do Rio de Janeiro, Brasil. Esta avenida é nomeada em homenagem à atriz francesa Brigitte Bardot, que visitou a cidade em 1964, deixando uma marca duradoura em sua história turística.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Búzios-Rua das Pedras',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/ruadaspedras.jpg',
                  width: 400, height: 400),
              Text(
                'Centro gastronômico e comercial.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Búzios-Praia da Ferradura',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/praiadaferradura.JPG',
                  width: 400, height: 400),
              Text(
                'Praia de águas calmas e claras, com uma característica forma de ferradura.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Saquarema-Praia de Itaúna',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('images/praiadeitauna-saquarema.jpg',
                  width: 400, height: 400),
              Text(
                'A Praia de Itaúna é famosa por suas ondas ideais para a prática de surfe. Localizada em Saquarema, é um destino popular para surfistas de todo o Brasil e do mundo.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        // Adicione mais itens à lista, se necessário
      ],
    );
  }
}


class RegiaoSulFluminenseTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Column(
            children: [
              Text(
                'Paraty - Centro Histórico de Paraty',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/centrohistorico.jpg',
                  width: 400, height: 400),
              Text(
                'Preserva a arquitetura colonial portuguesa.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Paraty - Praia do Cachadaço',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/cachadarco.jpg',
                  width: 400, height: 400),
              Text(
                'Uma das praias mais bonitas da região.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Paraty - Praia do Sono',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/praiadosonoparaty.jpg',
                  width: 400, height: 400),
              Text(
                'Localizada em Paraty, a Praia do Sono é conhecida por sua beleza natural intocada e atmosfera tranquila. É acessível apenas por trilha ou barco, o que a torna um destino popular para os amantes da natureza em busca de uma experiência mais isolada.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Niteroi - MAC',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/mac.png', width: 400, height: 400),
              Text(
                'Localizada em Niteroi, Projetado por Oscar Niemeyer, o MAC é um dos cartões postais de Niterói e oferece uma vista panorâmica da Baía de Guanabara.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Niteroi - Parque da Cidade ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/parquecidade.jpg',
                  width: 400, height: 400),
              Text(
                'Localizado no Morro da Viração, o parque oferece trilhas e mirantes com vistas espetaculares do Rio de Janeiro, da Baía de Guanabara e de Niterói.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Niteroi - Praia de Itacoatiara ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/Itacoatiara.JPG',
                  width: 400, height: 400),
              Text(
                'Famosa entre os surfistas, a praia oferece águas claras e uma bela paisagem, além de trilhas para o Costão de Itacoatiara.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Niteroi - Fortaleza de Santa Cruz ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/fortaleza.JPG',
                  width: 400, height: 400),
              Text(
                'Construída no século XVI, a fortaleza oferece visitas guiadas e uma vista privilegiada da entrada da Baía de Guanabara.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Niteroi - Campo São Bento ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/Campo.JPG', width: 400, height: 400),
              Text(
                'Um parque urbano com lagos, áreas de lazer, quiosques e feiras de artesanato, ideal para um passeio tranquilo em meio à natureza',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Angra dos Reis - Ilha Grande ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/ilha.JPG', width: 400, height: 400),
              Text(
                'Um dos principais destinos turísticos de Angra dos Reis, com praias paradisíacas, trilhas e opções de mergulho. A Praia de Lopes Mendes e a Vila do Abraão são destaques.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Angra dos Reis - Praia do Dentista (Ilha da Gipoia) ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/Giopoia.JPG', width: 400, height: 400),
              Text(
                'Conhecida por suas águas cristalinas e areia branca, é um dos destinos mais procurados por quem visita Angra dos Reis.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Angra dos Reis - Ilha de Cataguases ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/cataguases.JPG',
                  width: 400, height: 400),
              Text(
                'Pequena ilha com praias de areia branca e águas transparentes, ideal para um dia de relaxamento e mergulho.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Angra dos Reis - Matriz de Nossa Senhora da Conceição ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/matriz.JPG', width: 400, height: 400),
              Text(
                'A igreja mais antiga de Angra dos Reis, construída em 1750, oferece um passeio cultural pelo centro histórico da cidade.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Angra dos Reis - Marina do Bracuhy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 18, 19, 19),
                  decoration: TextDecoration.underline,
                ),
              ),
              Image.asset('assets/images/marina.JPG', width: 400, height: 400),
              Text(
                'Um dos melhores pontos de Angra dos Reis para quem gosta de atividades náuticas, oferecendo infraestrutura completa para barcos e iate',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
