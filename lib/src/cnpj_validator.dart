class CNPJValidator {
  static bool isValid(String cnpj) => getValidationMessage(cnpj) == null;

  static String? getValidationMessage(String cnpj) {
    cnpj = cnpj.replaceAll(RegExp(r'\D'), '');

    if (cnpj.length != 14) return 'CNPJ deve conter 14 dígitos numéricos.';
    if (RegExp(r'^(\d)\1{13}$').hasMatch(cnpj)) return 'CNPJ com todos os dígitos iguais é inválido.';

    List<int> digits = cnpj.split('').map(int.parse).toList();

    List<int> weights1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
    List<int> weights2 = [6, ...weights1];

    int calc(List<int> weights) {
      int sum = 0;
      for (int i = 0; i < weights.length; i++) {
        sum += digits[i] * weights[i];
      }
      int mod = sum % 11;
      return (mod < 2) ? 0 : 11 - mod;
    }

    if (calc(weights1) != digits[12]) return 'Primeiro dígito verificador inválido.';
    if (calc(weights2) != digits[13]) return 'Segundo dígito verificador inválido.';

    return null;
  }

  static bool isCNPJ(String value) => isValid(value);
}
