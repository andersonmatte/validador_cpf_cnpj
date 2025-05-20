import 'package:validador_cpf_cnpj/validador_cpf_cnpj.dart';

void main() {
  // CPF
  const cpf = '123.456.789-09';
  print('$cpf é válido?  ${CPFValidator.isValid(cpf)}');

  // CNPJ numérico
  const cnpj = '11.444.777/0001-61';
  print('$cnpj é válido? ${CNPJValidator.isValid(cnpj)}');

  // Novo CNPJ alfanumérico (simulado)
  const novoCnpj = 'A1234567890B1C';
  print('$novoCnpj é válido? ${CNPJNovoValidator.isValid(novoCnpj)}');
}
