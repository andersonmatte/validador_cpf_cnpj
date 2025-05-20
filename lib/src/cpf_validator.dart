class CPFValidator {
  static bool isValid(String cpf) {
    return getValidationMessage(cpf) == null;
  }

  static String? getValidationMessage(String cpf) {
    cpf = cpf.replaceAll(RegExp(r'\D'), '');

    if (cpf.length != 11) return 'CPF deve conter 11 dígitos numéricos.';
    if (RegExp(r'^(\d)\1*$').hasMatch(cpf)) return 'CPF não pode conter todos os dígitos iguais.';

    List<int> digits = cpf.split('').map(int.parse).toList();

    for (int i = 9; i < 11; i++) {
      int sum = 0;
      for (int j = 0; j < i; j++) {
        sum += digits[j] * ((i + 1) - j);
      }
      int rev = (sum * 10) % 11;
      if (rev == 10) rev = 0;
      if (rev != digits[i]) return 'Dígitos verificadores do CPF são inválidos.';
    }

    return null;
  }

  static bool isCPF(String value) => isValid(value);
}
