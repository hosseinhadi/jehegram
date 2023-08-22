import 'package:isar/isar.dart';
import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/person_model.dart';

import 'enums/message_reacion_type_enum.dart';
part 'message_raction_model.g.dart';

@embedded
class MessageReactionModel {
  MessageReactionModel({
    this.messageReactionType,
    this.dateTimeAdded,
    this.dateTimeDeleted,
    this.person,
    this.Id,
  });

  Id? Id;
  @enumerated
  MessageReactionType? messageReactionType;
  IsarLink<PersonModel>? person;
  DateTime? dateTimeAdded;
  DateTime? dateTimeDeleted;
}
