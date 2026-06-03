import '../model/ServiceOrder.dart';

class Database {
  static final Database _instance = Database._internal();
  Database._internal();
  factory Database() => _instance;
  final List<Serviceorder> _serviceOrdersMock = [
    Serviceorder(
      id: 'OS-2026-001',
      client: 'Lab de Informatica 3',
      status: 'Em andamento',
      description: 'Manutenção preventiva dos computadores.',
    ),
    Serviceorder(
      id: 'OS-2026-002',
      client: 'Secretaria Executiva',
      status: 'Aberta',
      description: 'Configuração de nova sub-rede local.',
    ),
    Serviceorder(
      id: 'OS-2026-003',
      client: 'Bloco Técnico B',
      status: 'Concluída',
      description: 'Troca de switch e testes de patch panel.',
    ),
  ];

  List<Serviceorder> getOrders() {
    return _serviceOrdersMock;
  }

  void addOrder(Serviceorder order) {
    _serviceOrdersMock.add(order);
  }
}
