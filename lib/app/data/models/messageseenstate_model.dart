import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/person_model.dart';

@embedded
class MessageSeenStateModel {
  MessageSeenStateModel({
    this.id,
    this.person,
    this.date,
    this.deletedTime,
  });

  Id? id;
  IsarLink<PersonModel>? person;
  DateTime? date;
  DateTime? deletedTime;
}
