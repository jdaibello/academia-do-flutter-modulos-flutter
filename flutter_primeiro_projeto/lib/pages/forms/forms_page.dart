import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final passwordEC = TextEditingController();
  String categoria = 'Categoria1';
  // String texto = '';

  @override
  void dispose() {
    nameEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // TextField(
              //   onChanged: (String value) {
              //     setState(() {
              //       texto = value;
              //     });
              //   },
              // ),
              // const SizedBox(height: 10),
              // Text('Texto digitado: $texto'),
              TextFormField(
                controller: nameEC,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Nome Completo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ),
                  isDense: true,
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo X não preenchido';
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: passwordEC,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ),
                  isDense: true,
                ),
                obscureText: true,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo X não preenchido';
                  }
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: categoria,
                elevation: 16,
                icon: const Icon(Icons.arrow_back),
                isDense: true,
                decoration: InputDecoration(
                  labelText: 'Categoria',
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Categoria não selecionada';
                  }
                },
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      categoria = newValue;
                    });
                  }
                },
                items: const [
                  DropdownMenuItem(
                    value: 'Categoria1',
                    child: Text('Categoria 1'),
                  ),
                  DropdownMenuItem(
                    value: 'Categoria2',
                    child: Text('Categoria 2'),
                  ),
                  DropdownMenuItem(
                    value: 'Categoria3',
                    child: Text('Categoria 3'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  var formValid = formKey.currentState?.validate() ?? false;
                  var message = 'Formulário Inválido';

                  if (formValid) {
                    message = 'Formulário Válido (${nameEC.text})';
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                    ),
                  );
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
