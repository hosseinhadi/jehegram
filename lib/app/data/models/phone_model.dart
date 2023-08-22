import 'package:isar/isar.dart';

part 'phone_model.g.dart';

@embedded
class PhoneModel {
  PhoneModel({
    this.id,
    this.countryCode,
    this.phoneNumber,
  });

  Id? id;
  int? countryCode;
  int? phoneNumber;
}
