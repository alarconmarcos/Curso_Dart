import 'package:projeto_inicial/projeto_inicial.dart' as projeto_inicial;

void main() {
  //Comentário simples
  ///comentário de documentação
  /*Comentário de multiplas linhas*/
  /**comentário de multiplas linhas de documentação **/

  int idade = 44;
  double altura = 1.70;
  bool geek = true;
  const String nome = 'Marcos Alarcon';
  final String apelido;
  bool maiorDeIdade;
  int energia = 100;

  //ver se é maior de idade
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  apelido = 'Marquinhos';

  //para saber quantas voltas foram dadas
  for (int i = 1; i < 10; i++) {
    print('Concluí $i voltas');
  }

  //quantas energias foram gastas
  while (energia > 0) {
    print('Energia: $energia');
    energia--;
  }

  // do {
  //   print('Energia: $energia');
  //   energia--;
  // } while (energia > 0);

  List<dynamic> dinamica = [idade, altura, geek, nome, apelido];

  String frase =
      'Eu sou o ${dinamica[3]}, mas pode me chamar de ${dinamica[4]} \n'
      'Eu me considero Geek? ${dinamica[2]}, \n'
      'tenho ${dinamica[0]} anos e ${dinamica[1]} de altura \n'
      'e sou maior de idade? $maiorDeIdade';

  List<String> listanomes = ['Richard', 'Natália', 'Alex', 'Ândriu', 'André'];

  print(frase);
}
