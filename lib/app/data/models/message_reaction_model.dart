import 'package:jehegram/app/data/models/person_model.dart';

import 'enums/message_reacion_type_enum.dart';
part 'message_reaction_model.g.dart';

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
  PersonModel? person;
  DateTime? dateTimeAdded;
  DateTime? dateTimeDeleted;
}
