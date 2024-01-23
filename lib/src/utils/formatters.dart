import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final String text = newValue.text.replaceAll(RegExp(r'\D'), '');

    String formattedValue = '';
    for (int i = 0; i < text.length; i++) {
      if (i % 4 == 0 && i > 0) {
        formattedValue += ' ';
      }
      formattedValue += text[i];
    }

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Menghilangkan semua karakter kecuali digit
    String cleanedText = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    // Mengambil angka dari string yang bersih
    int value = int.tryParse(cleanedText) ?? 0;

    // Mengubah angka menjadi format Rupiah
    String formattedText = NumberFormat.currency(
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(value);

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

int removeCurrencyFormat(String formattedText) {
  String cleanedText = formattedText.replaceAll(
      RegExp(r'[^0-9]'), ''); // Menghapus karakter non-digit
  int value =
      int.tryParse(cleanedText) ?? 0; // Mengambil angka dari string yang bersih
  return value;
}

String formatCurrency(double amount) {
  final currencyFormatter = NumberFormat.currency(
    decimalDigits: 2, // Jumlah angka desimal
    symbol: 'Rp ', // Simbol mata uang, kosongkan jika tidak diperlukan
  );
  return currencyFormatter.format(amount);
}

String formatCurrencyNonDecimal(double amount) {
  final formattedAmount = NumberFormat('#,###', 'id_ID').format(amount);
  return 'Rp $formattedAmount';
}

String removeSpaces(String input) {
  return input.replaceAll(' ', '');
}

String generateAvatarUrl(String name) {
  // Ganti semua spasi dengan tanda plus (+)
  String formattedName = name.replaceAll(' ', '+');
  String imageSize = "150";
  return "https://ui-avatars.com/api/?name=$formattedName&color=7F9CF5&background=EBF4FF&size=$imageSize";
}
