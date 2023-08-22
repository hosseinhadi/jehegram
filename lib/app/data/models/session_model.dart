import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/person_model.dart';
part 'session_model.g.dart';

@embedded
class SessionModel {
  SessionModel({
    this.IP,
    this.startDateTime,
    this.endDateTime,
    this.person,
    this.deviceType,
    this.Id,
  });

  Id? Id;
  String? IP;
  String? deviceType;
  DateTime? startDateTime;
  DateTime? endDateTime;
  IsarLink<PersonModel>? person;
}
