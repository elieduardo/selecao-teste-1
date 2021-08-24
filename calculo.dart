class Calculo {
  int calcular(int num) {
    //inicia variável
    int resultado = 0;

    //percorre todos os números menores que o valor passado e que são maiores ou igual a 1
    for (int i = 1; i < num; i++) {
      //se o resultado do resto for zero ele é divisível por 3 ou 5
      if (i % 3 == 0 || i % 5 == 0) {
        //soma o valor na variável
        resultado += i;
      }
    }

    //retorna o resultado
    return resultado;
  }

  bool validar(var num) {
    if (num != null) {
      if (int.tryParse(num) != null && int.tryParse(num)! > 1) {
        return true;
      }
    }
    print('Digite um valor positivo e inteiro');
    return false;
  }
}
