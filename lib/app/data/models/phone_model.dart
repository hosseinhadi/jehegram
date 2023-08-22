
import 'package:isar/isar.dart';

part 'phone_model.g.dart';

@embedded
class PhoneModel {
  PhoneModel({
    this.countryCode,
    this.phoneNumber,
    this.Id,
  });

  Id? Id;
  int? countryCode;
  int? phoneNumber;
}
