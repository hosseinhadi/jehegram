import 'package:jehegram/app/data/models/person_model.dart';

class SessionModel{
  SessionModel({this.IP,
    this.startDateTime,
    this.endDateTime,
    this.person,
    this.deviceType,
  });

  String? IP;
  String? deviceType;
  DateTime? startDateTime;
  DateTime? endDateTime;
  PersonModel? person;



}