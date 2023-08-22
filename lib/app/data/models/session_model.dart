import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/person_model.dart';

@embedded
class SessionModel {
  SessionModel({
    this.id,
    this.IP,
    this.startDateTime,
    this.endDateTime,
    this.person,
    this.deviceType,
  });

  Id? id;
  String? IP;
  String? deviceType;
  DateTime? startDateTime;
  DateTime? endDateTime;
  IsarLink<PersonModel>? person;
}
