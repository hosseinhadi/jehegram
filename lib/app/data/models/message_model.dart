import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_reaction_model.dart';
import 'package:jehegram/app/data/models/messageseenstate_model.dart';
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
    this.mentionedPerson,
    this.messagesReactions,
    this.inThreadOfMessage
  });


  Id? id;
  IsarLinks<PersonModel>? senderPerson;
  String? text;
  List<FileModel>? files;
  DateTime? dateAdded;
  DateTime? dateEdited;
  DateTime? deletedTime;
  MessageModel? replyToMessage;
  IsarLink<PersonModel>? forwardedFormPerson;
  List<MessageSeenStateModel>? seenBy;
  IsarLink<PersonModel>? mentionedPerson;
  List<MessageReactionModel>? messagesReactions;
  MessageModel? inThreadOfMessage;




}