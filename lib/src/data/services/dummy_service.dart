import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/data/models/account_bank/account_bank_model.dart';
import 'package:certenz/src/data/models/people_split_card/people_split_card_model.dart';
import 'package:certenz/src/data/models/recent_transaction/recent_transaction_model.dart';
import 'package:easy_localization/easy_localization.dart';

class DummyService {
  static List<String> gender = [
    LocaleKeys.text_genders_m.tr(),
    LocaleKeys.text_genders_f.tr(),
  ];

  static List<String> codePhone = [
    "+62",
    "+63",
    "+64",
    "+65",
    "+66",
    "+67",
    "+68",
  ];

  static List<String> period = [
    "1 Month",
    "2 Month",
    "3 Month",
    "4 Month",
    "5 Month",
  ];

  static List<String> onPaid = [
    "Weekly",
    "Monthly",
    "Yearly",
  ];

  static List<String> provinces = [
    LocaleKeys.provinces_aceh.tr(),
    LocaleKeys.provinces_bali.tr(),
    LocaleKeys.provinces_banten.tr(),
    LocaleKeys.provinces_bengkulu.tr(),
    LocaleKeys.provinces_yogyakarta.tr(),
    LocaleKeys.provinces_jakarta.tr(),
    LocaleKeys.provinces_jambi.tr(),
    LocaleKeys.provinces_jabar.tr(), // West Java
    LocaleKeys.provinces_jateng.tr(), // Central Java
    LocaleKeys.provinces_jatim.tr(), // East Java
    LocaleKeys.provinces_kalbar.tr(), // West Kalimantan
    LocaleKeys.provinces_kaltim.tr(), // East Kalimantan
    LocaleKeys.provinces_kalteng.tr(), // Central Kalimantan
    LocaleKeys.provinces_kalut.tr(), // North Kalimantan
    LocaleKeys.provinces_kalsel.tr(), // South Kalimantan
    LocaleKeys.provinces_kepri.tr(), // Riau Islands
    LocaleKeys.provinces_ntb.tr(), // West Nusa Tenggara
    LocaleKeys.provinces_ntt.tr(), // East Nusa Tenggara
    LocaleKeys.provinces_papua.tr(),
    LocaleKeys.provinces_papuabarat.tr(), // West Papua
    LocaleKeys.provinces_riau.tr(),
    LocaleKeys.provinces_sulsel.tr(), // South Sulawesi
    LocaleKeys.provinces_sulut.tr(), // North Sulawesi
    LocaleKeys.provinces_sulteng.tr(), // Central Sulawesi
    LocaleKeys.provinces_sultra.tr(), // Southeast Sulawesi
    LocaleKeys.provinces_sulbar.tr(), // West Sulawesi
    LocaleKeys.provinces_sumbar.tr(), // West Sumatra
    LocaleKeys.provinces_sumsel.tr(), // South Sumatra
    LocaleKeys.provinces_sumut.tr(), // North Sumatra
    LocaleKeys.provinces_maluku.tr(),
    LocaleKeys.provinces_malut.tr(), // North Maluku
    LocaleKeys.provinces_lampung.tr(),
    LocaleKeys.provinces_gorontalo.tr()
  ];

  static List<String> listReligions = [
    "Islam",
    "Kristen Katolik",
    "Kristen Protestan",
    "Hindu",
    "Buddha",
    "Khonghucu"
  ];

  static List<String> listMaritalStatus = [
    LocaleKeys.dropdown_text_static_marital_status_marry.tr(),
    LocaleKeys.dropdown_text_static_marital_status_single.tr(),
  ];

  static List<String> listNationality = [
    LocaleKeys.dropdown_text_static_nationality_wni.tr(),
    LocaleKeys.dropdown_text_static_nationality_wna.tr(),
  ];

  static List<String> privacy = [
    "Laoreet pellentesque commodo nunc ligula tristique.",
    "Sit sed vitae nibh auctor lobortis sapien. Leo pretium vel sit nunc.",
    "Morbi ut semper diam gravida massa erat eleifend.",
    "Hac non cras morbi suspendisse.",
    "Urna mauris elit phasellus vel phasellus libero faucibus.",
  ];

  // static List<BankModel> listBank = [
  //   BankModel(
  //     id: 1,
  //     name: "Bank BCA",
  //     image: Assets.images.bca.path,
  //   ),
  //   BankModel(
  //     id: 2,
  //     name: "Bank BNI",
  //     image: Assets.images.bni.path,
  //   ),
  // ];

  static List<AccountBankModel> listAccount = [
    AccountBankModel(
        id: 1,
        name: "Takun",
        norek: 1440002525235820,
        bank: "Bank Mandiri",
        bankImage: Assets.images.mandiri.path),
    AccountBankModel(
        id: 2,
        name: "Kirara",
        norek: 32637627653612,
        bank: "Bank BCA",
        bankImage: Assets.images.bca.path),
  ];

  static List<PeopleSplitCardModel> listPeopleSplitCard = [
    PeopleSplitCardModel(
      email: "rumahjasa12@gmail.com",
      nohp: "(+62) 85157583255",
      amount: 500000.0,
      status: "Pending",
    ),
    PeopleSplitCardModel(
      email: "hanaanggraeni1@gmail.com",
      nohp: "(+62) 85157583255",
      amount: 500000.0,
      status: "Success",
    ),
  ];

  static AccountBankModel accountBankModel = AccountBankModel(
    id: 2,
    name: "Kirara",
    norek: 32637627653612,
    bank: "Bank BCA",
    bankImage: Assets.images.bca.path,
  );

  static List<Map<String, dynamic>> listLanguages = [
    {
      "value": "en",
      "title": "English",
    },
    {
      "value": "id",
      "title": "Bahasa Indonesia",
    }
  ];
  // List<MessageModel> listMessage = [
  //   MessageModel(
  //     message:
  //     "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  //     isMe: false,
  //   ),
  //   MessageModel(
  //     message:
  //     "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut ",
  //     isMe: true,
  //   ),
  //   MessageModel(
  //     message: "Yes",
  //     isMe: false,
  //   ),
  //   MessageModel(
  //     message: "OK",
  //     isMe: false,
  //   ),
  //   MessageModel(
  //     message: "No, thanks for your help :) eiusmod tempor incididunt ut",
  //     isMe: false,
  //   ),
  // ];
  //

  static List<RecentTransactionModel> listRecentTransaction = [
    RecentTransactionModel(
      id: 1,
      name: "Evan Purnama",
      imgProfile: Assets.images.user2.path,
      amount: 5000000,
    ),
    RecentTransactionModel(
      id: 2,
      name: "Evan Purnama",
      imgProfile: Assets.images.user2.path,
      amount: 5000000,
    ),
    RecentTransactionModel(
      id: 3,
      name: "Evan Purnama",
      imgProfile: Assets.images.user2.path,
      amount: 5000000,
    ),
  ];
  //
  // List<EwalletModel> listEwallet() {
  //   return [
  //     EwalletModel(icon: "assets/images/ovo.png", name: "OVO", id: 0),
  //     EwalletModel(icon: "assets/images/gopay.png", name: "Gopay", id: 1),
  //     EwalletModel(icon: "assets/images/dana.png", name: "Dana", id: 2),
  //     EwalletModel(icon: "assets/images/linkaja.png", name: "LinkAja", id: 3),
  //     EwalletModel(icon: "assets/images/shopeepay.png", name: "ShopeePay", id: 4),
  //   ];
  // }
  //
  // List<String> categoryProfile() {
  //   return [
  //     "History",
  //     "Active Purchase",
  //     "Your Bills",
  //   ];
  // }
  //
}
