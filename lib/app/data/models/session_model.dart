import 'package:jehegram/app/data/models/person_model.dart';
part 'session_model.g.dart';

class SessionModel{
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
  PersonModel? person;



}