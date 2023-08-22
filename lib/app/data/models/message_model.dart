import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_reaction_model.dart';
import 'package:jehegram/app/data/models/message_seen_state_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';
part 'message_model.g.dart';

class MessageModel{
  MessageModel({
    required this.id,
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
    this.inThreadOfMessage
  });


  Id id;
  PersonModel? senderPerson;
  String? text;
  List<FileModel>? files;
  DateTime? dateAdded;
  DateTime? dateEdited;
  DateTime? deletedTime;
  MessageModel? replyToMessage;
  PersonModel? forwardedFormPerson;
  List<MessageSeenStateModel>? seenBy;
  IsarLinks<PersonModel>? mentionedPersons;
  List<MessageReactionModel>? messagesReactions;
  MessageModel? inThreadOfMessage;




}