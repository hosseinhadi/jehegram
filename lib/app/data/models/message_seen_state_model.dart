import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/person_model.dart';
part 'message_seen_state_model.g.dart';

@embedded
class MessageSeenStateModel {
  MessageSeenStateModel({
    this.Id,
    this.person,
    this.date,
    this.deletedTime,
  });

  Id? Id;
  IsarLink<PersonModel>? person;
  DateTime? date;
  DateTime? deletedTime;
}
