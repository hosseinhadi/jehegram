import 'package:jehegram/app/data/models/person_model.dart';

import 'package:isar/isar.dart';


class SessionModel{
  SessionModel({this.IP,
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