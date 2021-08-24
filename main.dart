import 'dart:io';

import 'calculo.dart';

main(List<String> args) {
  var opcao;
  do {
    //imprime na tela do terminal
    stdout.write("Digite um número: ");
    //lê input do usuário
    var num = stdin.readLineSync();

    //valida se é um número positivo e inteiro
    if (Calculo().validar(num)) {
      //chama o méotodo do calculo exibe resultado
      print('A soma de todos os menores que $num e divisíveis por 3 e 5 eh: ' +
          Calculo().calcular(int.tryParse(num!)!).toString());
    }

    //mostra opcao se quer ou não continuar calculando
    stdout.write("Digite 1 para continuar testando: ");
    opcao = stdin.readLineSync();
  } while (opcao == '1');
}
