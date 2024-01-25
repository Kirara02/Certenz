Map<String, String> _genderMap = {
  "Male": "Laki-laki",
  "Female": "Perempuan",
};

String convertGenderToIndonesian(String genderInEnglish) {
  return _genderMap[genderInEnglish] ?? genderInEnglish;
}

String convertGenderToEnglish(String genderInIndonesian) {
  var englishGender = _genderMap.entries
      .firstWhere((entry) => entry.value == genderInIndonesian,
          orElse: () => const MapEntry("", ""))
      .key;
  return englishGender.isNotEmpty ? englishGender : genderInIndonesian;
}
