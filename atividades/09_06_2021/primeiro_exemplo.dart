 /* Primeiro Exemplo de carregamento de uma feed do twitter */

void main() {
  carregamentoCompleto();
  print('Carregando layout da pagina.');
  print('Carregando demais informações da pagina como configurações.');
  print('Carregando feed com as publicações dos usuários.');
}

Future carregamentoCompleto() {
  return Future.delayed(
      Duration(seconds: 3), () => print('Carregou todos os dados!!!'));
}

/*
Future - É um método que é usado para fazer algo no futuro, como a propio nome da classe
já diz. Este método é asincrono, no primeiro exemplo ela ira carregar todas o carregamento 
do feed do twitter para depois informar que todos os dados foram carregados, mesmo o metedo
Future sendo chamada logo de inicio, ela procede com as demais funcionalidades que foram 
programadas e so ira ser retornada depois de um delay de 3 segundos.

await - Como a propria tradução do inglês já diz 'espere', da uma boa ideia do que esta função faz, 
este recurso depende da função async para ser chamada e do método Future para ser utilizada, 
basicamente ela espera uma determina função Future ser processada para as demais proseguirem.
Exebido no segundo exemplo.

async - É um método que é chamada dentro de uma função para deixa-la assíncrona.

assíncrona - Com a programação assíncrona não é necessário aguardar a finalização da 
execução de cada linha sincronizada dentro de uma função para prosseguir com as demais,
com assíncrona enquanto a função esta sendo carregada as demais prosseguem com sua execução,
desta forma agilizando o processamento de carregamento dos recursos que foram programados,
ou seja ganhando tempo.

 */
