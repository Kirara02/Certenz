Map<String, String> _englishToIndonesiaProvinceMap = {
  "Aceh": "Aceh",
  "Bali": "Bali",
  "Banten": "Banten",
  "Bengkulu": "Bengkulu",
  "Yogyakarta": "Yogyakarta",
  "Jakarta": "Jakarta",
  "Jambi": "Jambi",
  "West Java": "Jawa Barat",
  "Central Java": "Jawa Tengah",
  "East Java": "Jawa Timur",
  "West Kalimantan": "Kalimantan Barat",
  "East Kalimantan": "Kalimantan Timur",
  "Central Kalimantan": "Kalimantan Tengah",
  "North Kalimantan": "Kalimantan Utara",
  "South Kalimantan": "Kalimantan Selatan",
  "Riau Islands": "Kepulauan Riau",
  "West Nusa Tenggara": "Nusa Tenggara Barat",
  "East Nusa Tenggara": "Nusa Tenggara Timur",
  "Papua": "Papua",
  "West Papua": "Papua Barat",
  "Riau": "Riau",
  "South Sulawesi": "Sulawesi Selatan",
  "North Sulawesi": "Sulawesi Utara",
  "Central Sulawesi": "Sulawesi Tengah",
  "Southeast Sulawesi": "Sulawesi Tenggara",
  "West Sulawesi": "Sulawesi Barat",
  "West Sumatra": "Sumatera Barat",
  "South Sumatra": "Sumatera Selatan",
  "North Sumatra": "Sumatera Utara",
  "Maluku": "Maluku",
  "North Maluku": "Maluku Utara",
  "Lampung": "Lampung",
  "Gorontalo": "Gorontalo",
  // dan seterusnya...
};

Map<String, String> _indonesianToEnglishProvinceMap = {
  "Aceh": "Aceh",
  "Bali": "Bali",
  "Banten": "Banten",
  "Bengkulu": "Bengkulu",
  "Yogyakarta": "Yogyakarta",
  "Jakarta": "Jakarta",
  "Jambi": "Jambi",
  "Jawa Barat": "West Java",
  "Jawa Tengah": "Central Java",
  "Jawa Timur": "East Java",
  "Kalimantan Barat": "West Kalimantan",
  "Kalimantan Timur": "East Kalimantan",
  "Kalimantan Tengah": "Central Kalimantan",
  "Kalimantan Utara": "North Kalimantan",
  "Kalimantan Selatan": "South Kalimantan",
  "Kepulauan Riau": "Riau Islands",
  "Nusa Tenggara Barat": "West Nusa Tenggara",
  "Nusa Tenggara Timur": "East Nusa Tenggara",
  "Papua": "Papua",
  "Papua Barat": "West Papua",
  "Riau": "Riau",
  "Sulawesi Selatan": "South Sulawesi",
  "Sulawesi Utara": "North Sulawesi",
  "Sulawesi Tengah": "Central Sulawesi",
  "Sulawesi Tenggara": "Southeast Sulawesi",
  "Sulawesi Barat": "West Sulawesi",
  "Sumatera Barat": "West Sumatra",
  "Sumatera Selatan": "South Sumatra",
  "Sumatera Utara": "North Sumatra",
  "Maluku": "Maluku",
  "Maluku Utara": "North Maluku",
  "Lampung": "Lampung",
  "Gorontalo": "Gorontalo",
  // dan seterusnya...
};

String convertProvinceToIndonesian(String provinceInEnglish) {
  return _englishToIndonesiaProvinceMap[provinceInEnglish] ?? provinceInEnglish;
}

String convertProvinceToEnglish(String provinceInIndonesian) {
  return _indonesianToEnglishProvinceMap[provinceInIndonesian] ??
      provinceInIndonesian;
}
