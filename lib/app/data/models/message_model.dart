import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_reaction_model.dart';
import 'package:jehegram/app/data/models/message_seenstate_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';

part 'message_model.g.dart';

@embedded
class MessageModel {
  MessageModel(
      {this.id,
      this.senderPerson,
      this.files,
      this.dateAdded,
      this.dateEdited,
      this.deletedTime,
      this.replyToMessage,
      this.forwardedFormPerson,
      this.seenBy,
      this.mentionedPersons,
      this.messagesReactions,
      this.inThreadOfMessage});

  Id? id;
  IsarLink<PersonModel>? senderPerson;
  String? text;
  List<FileModel>? files;
  DateTime? dateAdded;
  DateTime? dateEdited;
  DateTime? deletedTime;
  MessageModel? replyToMessage;
  IsarLink<PersonModel>? forwardedFormPerson;
  List<MessageSeenStateModel>? seenBy;
  IsarLinks<PersonModel>? mentionedPersons;
  List<MessageReactionModel>? messagesReactions;
  MessageModel? inThreadOfMessage;
}
