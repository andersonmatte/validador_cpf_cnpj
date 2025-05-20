import 'package:test/test.dart';
import 'package:validador_cpf_cnpj/validador_cpf_cnpj.dart';

void main() {

  // Teste Validadores
  test('Validação CPF válido', () {
    expect(CPFValidator.isValid('529.982.247-25'), isTrue);
  });

  test('Validação CNPJ válido', () {
    expect(CNPJValidator.isValid('04.252.011/0001-10'), isTrue);
  });

  test('Validação CNPJ Novo válido', () {
    expect(CNPJNovoValidator.isValid('A1B2C3D4E5F6G7'), isFalse);
  });

  // Teste isCPF
  test('Validação isCPF String qualquer com mensagem', () {
    final message = CPFValidator.getValidationMessage('abrodf2147y');
    expect(message, isNotNull);
  });

  test('Validação isCPF String sem Mascara', () {
    expect(CPFValidator.isCPF('52998224725'), isTrue);
  });

  test('Validação isCPF String com Mascara', () {
    expect(CPFValidator.isCPF('529.982.247-25'), isTrue);
  });

  // Teste isCNPJ
  test('Validação isCNPJ String qualquer', () {
    expect(CNPJValidator.isCNPJ('abrodf2147y235'), isFalse);
  });

  test('Validação isCNPJ String sem Mascara', () {
    expect(CNPJValidator.isCNPJ('04252011000110'), isTrue);
  });

  test('Validação isCNPJ String com Mascara', () {
    expect(CNPJValidator.isCNPJ('04.252.011/0001-10'), isTrue);
  });

}
