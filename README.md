# 📦 validador_cpf_cnpj

Validador de CPF, CNPJ e do novo formato alfanumérico de CNPJ (válido a partir de julho de 2026). Compatível com Dart e Flutter.

## ✨ Recursos

- ✅ Validação completa de CPF
- ✅ Validação de CNPJ (formato numérico)
- ✅ Validação de novo CNPJ (formato alfanumérico)
- 🧪 Cobertura com testes unitários
- 💬 Mensagens de erro descritivas


## 🚀 Instalação

Adicione ao seu `pubspec.yaml`:

```yaml
dependencies:
  validador_cpf_cnpj: ^1.0.0

```

## 🚀 Como Usar

Importe em seu código Dart:

```
import 'package:validador_cpf_cnpj/validador_cpf_cnpj.dart';
```

✅ Validação de CPF

```
bool isValido = CPFValidator.isValid('123.456.789-09');
String? erro = CPFValidator.getValidationMessage('123.456.789-09');
```

✅ Validação de CNPJ

```
bool isValido = CNPJValidator.isValid('11.444.777/0001-61');
String? erro = CNPJValidator.getValidationMessage('11.444.777/0001-61');
```

✅ Validação do novo CNPJ (alfanumérico)

```
bool isValido = CNPJNovoValidator.isValid('A1234567890B1C');
String? erro = CNPJNovoValidator.getValidationMessage('A1234567890B1C');
```

🔍 Exemplos de validação

| Tipo      | Entrada              | Validação           |
| --------- | -------------------- | ------------------- |
| CPF       | `123.456.789-09`     | ✅ Válido            |
| CPF       | `11111111111`        | ❌ Inválido          |
| CNPJ      | `11.444.777/0001-61` | ✅ Válido            |
| CNPJ      | `12345678000100`     | ❌ Dígitos inválidos |
| Novo CNPJ | `A1B2C3D4E5F6G7`     | ✅/❌ (simulado)      |


👨‍💻 Autor

Anderson Matte
[GitHub](https://github.com/andersonmatte/) | [LinkedIn](https://www.linkedin.com/in/andersonmatte/)

📝 Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
