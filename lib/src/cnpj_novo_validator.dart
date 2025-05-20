class CNPJNovoValidator {
  static bool isValid(String cnpj) => getValidationMessage(cnpj) == null;

  static String? getValidationMessage(String cnpj) {
    final cleaned = cnpj.toUpperCase().replaceAll(RegExp(r'[^A-Z0-9]'), '');

    if (cleaned.length != 14) return 'Novo CNPJ deve conter 14 caracteres alfanuméricos.';

    List<int> digits = [];
    for (int i = 0; i < 14; i++) {
      final c = cleaned.codeUnitAt(i);
      final v = c - 48;
      if (v < 0 || (v > 9 && v < 17) || v > 43) return 'Caracteres inválidos no novo CNPJ.';
      digits.add(v);
    }

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

  static bool isCNPJNovo(String value) => isValid(value);
}
