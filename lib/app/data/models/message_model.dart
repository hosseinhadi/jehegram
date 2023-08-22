import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_reaction_model.dart';
import 'package:jehegram/app/data/models/message_seen_state_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';
part 'message_model.g.dart';
@embedded
class MessageModel{
  MessageModel({
    this.Id,
    this.senderPerson,
    this.files,
    this.dateAdded,
    this.dateEdited,
    this.deletedTime,
    this.replyToMessage,
    this.forwardedFormPerson,
    this.seenBy ,
    this.mentionedPerson ,
    this.messagesReactions,
    this.inThreadOfMessage
  });


  Id? Id;
  IsarLink<PersonModel>? senderPerson;
  String? text;
  List<FileModel>? files;
  DateTime? dateAdded;
  DateTime? dateEdited;
  DateTime? deletedTime;
  MessageModel? replyToMessage;
  IsarLink<PersonModel>? forwardedFormPerson;
  List<MessageSeenStateModel>? seenBy;
  IsarLink<PersonModel>? mentionedPerson;
  MessageReactionModel? messagesReactions;
  MessageModel? inThreadOfMessage;




}