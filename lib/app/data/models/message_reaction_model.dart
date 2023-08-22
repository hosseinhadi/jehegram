import 'package:jehegram/app/data/models/person_model.dart';

import 'enums/message_reacion_type_enum.dart';

class MessageReactionModel {
  MessageReactionModel({
    this.messageReactionType,
    this.dateTimeAdded,
    this.dateTimeDeleted,
    this.person,
  });

  MessageReactionType? messageReactionType;
  PersonModel? person;
  DateTime? dateTimeAdded;
  DateTime? dateTimeDeleted;
}
