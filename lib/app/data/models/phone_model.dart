import 'package:isar/isar.dart';

part 'phone_model.g.dart';


class PhoneModel{
  PhoneModel({
    this.countryCode,
    this.phoneNumber,
  });

  int? countryCode;
  int? phoneNumber;

}
