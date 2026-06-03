import 'package:flutter/material.dart';

import '../database/Database.dart';
import '../model/ServiceOrder.dart';

class CadastroOrderModal extends StatefulWidget {
  const CadastroOrderModal({super.key});

  @override
  State<CadastroOrderModal> createState() => _CadastroOrderModalState();
}

class _CadastroOrderModalState extends State<CadastroOrderModal> {
  final _formKey = GlobalKey<FormState>();
  final _clientController = TextEditingController();
  final _descController = TextEditingController();
  String _statusSelecionado = 'Aberta';

  @override
  void dispose() {
    _clientController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: bottomInset + 20,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Nova Ordem de Serviço',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              TextFormField(
                controller: _clientController,
                decoration: const InputDecoration(
                  labelText: 'Cliente / Local',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.business),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Por favor, insira o cliente.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              TextFormField(
                controller: _descController,
                decoration: const InputDecoration(
                  labelText: 'Descrição do serviço',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.description),
                ),
                maxLines: 4,
                minLines: 3,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Por favor, insira a descrição.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              DropdownButtonFormField<String>(
                value: _statusSelecionado,
                decoration: const InputDecoration(
                  labelText: 'Status',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.info_outline),
                ),
                items: const [
                  DropdownMenuItem(value: 'Aberta', child: Text('Aberta')),
                  DropdownMenuItem(value: 'Em andamento', child: Text('Em andamento')),
                  DropdownMenuItem(value: 'Concluída', child: Text('Concluída')),
                ],
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _statusSelecionado = value;
                    });
                  }
                },
              ),
              const SizedBox(height: 22),

              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Salvar Ordem'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final newOrder = Serviceorder(
      id: 'OS-${DateTime.now().year}-${DateTime.now().millisecondsSinceEpoch % 1000}',
      client: _clientController.text.trim(),
      status: _statusSelecionado,
      description: _descController.text.trim(),
    );

    Database().addOrder(newOrder);
    Navigator.of(context).pop(newOrder);
  }
}
