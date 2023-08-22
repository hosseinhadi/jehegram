import 'package:jehegram/app/data/models/person_model.dart';

import 'enums/message_reacion_type_enum.dart';

import 'package:isar/isar.dart';

part 'message_reaction_model.g.dart';

class MessageReactionModel {
  MessageReactionModel({
    this.messageReactionType,
    this.dateTimeAdded,
    this.dateTimeDeleted,
    this.person,
  });

  Id? id;
  MessageReactionType? messageReactionType;
  PersonModel? person;
  DateTime? dateTimeAdded;
  DateTime? dateTimeDeleted;
}
