import 'package:jehegram/app/data/models/person_model.dart';
part 'message_seen_state_model.g.dart';

class MessageSeenStateModel {
  MessageSeenStateModel({
    this.id,
    this.person,
    this.date,
    this.deletedTime,
  });

  Id? id;
  IsarModel<PersonModel>PersonModel? person;
  DateTime? date;
  DateTime? deletedTime;
}
