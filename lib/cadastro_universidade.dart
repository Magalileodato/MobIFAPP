import 'package:flutter/material.dart';

class CadastroInstituicaoConveniada extends StatelessWidget {
  final String title;

  const CadastroInstituicaoConveniada({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'assets/images/livro.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'MobIFAPP',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              _buildTextField('Nome da Instituição'),
              const SizedBox(height: 10),
              _buildCountryDropdown('País'),
              const SizedBox(height: 10),
              _buildRegionDropdown('UF / Região'),
              const SizedBox(height: 10),
              _buildTextField('Cidade'),
              const SizedBox(height: 10),
              _buildCourseTypeDropdown('Tipo de Curso'),
              const SizedBox(height: 10),
              _buildNumericTextField('Quantidade de Vagas'),
              const SizedBox(height: 10),
              _buildCourseDropdown('Curso'),
              const SizedBox(height: 10),
              _buildFileAttachmentOption(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Adicionar lógica para anexar arquivo
                    },
                    child: const Text('Anexar Arquivo'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Adicionar lógica para salvar os dados
                    },
                    child: const Text('Salvar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Voltar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildNumericTextField(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }

  Widget _buildCountryDropdown(String labelText) {
    // Aqui você pode adicionar a lógica para preencher o dropdown com todos os países
    return _buildTextField(labelText);
  }

  Widget _buildRegionDropdown(String labelText) {
    // Aqui você pode adicionar a lógica para preencher o dropdown com as regiões do país selecionado
    return _buildTextField(labelText);
  }

  Widget _buildCourseTypeDropdown(String labelText) {
    // Aqui você pode adicionar a lógica para preencher o dropdown com os tipos de curso disponíveis
    return _buildTextField(labelText);
  }

  Widget _buildCourseDropdown(String labelText) {
    // Aqui você pode adicionar a lógica para preencher o dropdown com todos os cursos disponíveis
    return _buildTextField(labelText);
  }

  Widget _buildFileAttachmentOption() {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Text('Anexar Arquivo'),
      ],
    );
  }
}
