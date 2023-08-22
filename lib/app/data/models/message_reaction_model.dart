import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/person_model.dart';

import 'enums/message_reacion_type_enum.dart';

@embedded
class MessageReactionModel {
  MessageReactionModel({
    this.id,
    this.messageReactionType,
    this.dateTimeAdded,
    this.dateTimeDeleted,
    this.person,
  });

  Id? id;
  @enumerated
  MessageReactionType? messageReactionType;
  IsarLink<PersonModel>? person;
  DateTime? dateTimeAdded;
  DateTime? dateTimeDeleted;
}
