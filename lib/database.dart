import 'package:hellota/model/filme_model.dart';

class Database {
  static List<Filme> getFilmes() {
    final List<Filme> filmes = [
      Filme(
        titulo: 'Matrix',
        sinopse: 'Um hacker descobre a realidade...',
        anoLancamento: 1999,
        imdb: 8.7,
      ),
      Filme(
        titulo: 'Interstellar',
        sinopse: 'Viagem espacial e relatividade...',
        anoLancamento: 2014,
        imdb: 8.7,
      ),

      Filme(
        titulo: 'O Poderoso Chefão',
        sinopse:
            'A história da família mafiosa Corleone e sua ascensão no submundo do crime.',
        anoLancamento: 1972,
        imdb: 9.2,
      ),
      Filme(
        titulo: 'Interestelar',
        sinopse:
            'Exploradores viajam através de um buraco de minhoca em busca de um novo lar para a humanidade.',
        anoLancamento: 2014,
        imdb: 8.6,
      ),
      Filme(
        titulo: 'A Origem',
        sinopse:
            'Um ladrão invade sonhos para roubar segredos corporativos e recebe uma missão impossível.',
        anoLancamento: 2010,
        imdb: 8.8,
      ),
      Filme(
        titulo: 'Clube da Luta',
        sinopse:
            'Um homem insatisfeito cria um clube secreto de luta que foge do controle.',
        anoLancamento: 1999,
        imdb: 8.8,
      ),
      Filme(
        titulo: 'Forrest Gump',
        sinopse:
            'A vida de um homem simples que testemunha momentos históricos dos Estados Unidos.',
        anoLancamento: 1994,
        imdb: 8.8,
      ),
      Filme(
        titulo: 'O Senhor dos Anéis: A Sociedade do Anel',
        sinopse:
            'Um jovem hobbit inicia uma jornada para destruir um anel poderoso.',
        anoLancamento: 2001,
        imdb: 8.8,
      ),
      Filme(
        titulo: 'O Senhor dos Anéis: As Duas Torres',
        sinopse:
            'A jornada continua enquanto alianças são formadas para enfrentar o mal.',
        anoLancamento: 2002,
        imdb: 8.7,
      ),
      Filme(
        titulo: 'O Senhor dos Anéis: O Retorno do Rei',
        sinopse: 'A batalha final decide o destino da Terra Média.',
        anoLancamento: 2003,
        imdb: 9.0,
      ),
      Filme(
        titulo: 'Pulp Fiction',
        sinopse: 'Histórias interligadas do submundo do crime em Los Angeles.',
        anoLancamento: 1994,
        imdb: 8.9,
      ),
      Filme(
        titulo: 'O Cavaleiro das Trevas',
        sinopse:
            'Batman enfrenta o Coringa em uma batalha psicológica e moral.',
        anoLancamento: 2008,
        imdb: 9.0,
      ),
      Filme(
        titulo: 'Gladiador',
        sinopse:
            'Um general romano busca vingança após ser traído e perder sua família.',
        anoLancamento: 2000,
        imdb: 8.5,
      ),
      Filme(
        titulo: 'Titanic',
        sinopse:
            'Um romance nasce a bordo do navio condenado a um trágico destino.',
        anoLancamento: 1997,
        imdb: 7.9,
      ),
      Filme(
        titulo: 'Avatar',
        sinopse:
            'Um soldado humano se envolve com os nativos de um planeta alienígena.',
        anoLancamento: 2009,
        imdb: 7.8,
      ),
      Filme(
        titulo: 'De Volta para o Futuro',
        sinopse:
            'Um jovem viaja no tempo e precisa garantir que seus pais se apaixonem.',
        anoLancamento: 1985,
        imdb: 8.5,
      ),
      Filme(
        titulo: 'Jurassic Park',
        sinopse: 'Um parque de dinossauros clonados sai do controle.',
        anoLancamento: 1993,
        imdb: 8.2,
      ),
      Filme(
        titulo: 'Vingadores: Ultimato',
        sinopse:
            'Os heróis restantes tentam reverter a destruição causada por Thanos.',
        anoLancamento: 2019,
        imdb: 8.4,
      ),
      Filme(
        titulo: 'Homem-Aranha: Sem Volta para Casa',
        sinopse:
            'Peter Parker enfrenta consequências após sua identidade ser revelada.',
        anoLancamento: 2021,
        imdb: 8.2,
      ),
      Filme(
        titulo: 'Coringa',
        sinopse: 'A origem de um dos vilões mais icônicos de Gotham.',
        anoLancamento: 2019,
        imdb: 8.4,
      ),
      Filme(
        titulo: 'Parasita',
        sinopse:
            'Uma família pobre se infiltra na vida de uma família rica com consequências inesperadas.',
        anoLancamento: 2019,
        imdb: 8.5,
      ),
      Filme(
        titulo: 'Whiplash',
        sinopse:
            'Um jovem baterista enfrenta um professor exigente em busca da perfeição.',
        anoLancamento: 2014,
        imdb: 8.5,
      ),
    ];

    return filmes;
  }
}
