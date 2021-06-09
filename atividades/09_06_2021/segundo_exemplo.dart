/* Segundo exemplo Buscando inforamações do usuário no perfil do twitter*/

void main() async {
  await buscandoDados();
  print('Finalizado.');
  print('Carregando layout da pagina');
  print('Exibindo as informações.');
  print('Carregamento completo!!!');
  
}

Future buscandoDados() {
  return Future.delayed(
      Duration(seconds: 3), () => print('Buscando dados...'));
}
