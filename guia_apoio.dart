import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GuiaApoio(title: 'MobIFAAP'),
  ));
}

class GuiaApoio extends StatefulWidget {
  const GuiaApoio({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _GuiaApoioState createState() => _GuiaApoioState();
}

class _GuiaApoioState extends State<GuiaApoio> {
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
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 8),
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
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Região Metropolitana',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset('assets/images/regiaometropolitana.JPG',
                    width: 200, height: 200),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Zona Sul - Rio de Janeiro',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22, // Increased font size to 22
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/praiadecopacabana.JPG',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Copacabana: R\$ 500 - R\$ 1.200 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/botafogo.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            4, // Changed to 4
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Botafogo: R\$ 400 - R\$ 1.200 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/leme.JPG',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            4, // Changed to 4
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Leme: R\$ 400 - R\$ 1.200 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/ipanema.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            3, // Changed to 3
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ipanema: R\$ 300 - R\$ 800 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/leblon.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            3, // Changed to 3
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Leblon: R\$ 300 - R\$ 800 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/vidigal.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            2, // Changed to 2
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Vidigal: R\$ 200 - R\$ 600 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/saoconrado.JPG',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            2, // Changed to 2
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'São Conrado: R\$ 200 - R\$ 600 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/gloria.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            4, // Change this to 4
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Glória: R\$ 400 - R\$ 800 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/urca.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            4, // Change this to 4
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Urca: R\$ 400 - R\$ 800 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegiaoDosLagos extends StatelessWidget {
  const RegiaoDosLagos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Região dos Lagos',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset('assets/images/regiaodoslagos.JPG',
                    width: 300, height: 300),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/OrlaBardot-buzios.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            4, // Change this to 4
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Búzios: R\$ 400 - R\$ 1.000 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/fortecabofrio.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            4, // Change this to 4
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Cabo Frio: R\$ 400 - R\$ 800 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/prainha-Arraialdocabo.JPG',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            3, // Change this to 3
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Arraial do cabo: R\$ 300 - R\$ 800 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/praiadeitauna-saquarema.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            3, // Change this to 3
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Saquarema: R\$ 300 - R\$ 600. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegiaoSulFluminense extends StatelessWidget {
  const RegiaoSulFluminense({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Região Sul Fluminense',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset('assets/images/regiaoSulFluminense.JPG',
                    width: 300, height: 300),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Paraty',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22, // Increased font size to 22
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/centrohistorico.jpg',
                      width: 200, height: 200),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(
                            3, // Change this to 3
                            (index) => Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Paraty: R\$ 300 - R\$ 500 ou mais. Esses valores são aproximados e podem variar dependendo da localização específica, temporada, tipo de acomodação e outros fatores.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18, // Increased font size to 18
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
