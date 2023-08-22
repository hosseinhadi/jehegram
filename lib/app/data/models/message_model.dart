import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_reaction_model.dart';
import 'package:jehegram/app/data/models/messageseenstate_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';


class MessageModel{
  MessageModel({
    required this.pk,
    this.senderPerson,
    this.files = const <FileModel>[],
    this.dateAdded,
    this.dateEdited,
    this.deletedTime,
    this.replyToMessage,
    this.forwardedFormPerson,
    this.seenBy = const <MessageSeenStateModel>[],
    this.MentionPerson = const <PersonModel>[],
    this.messagesReactions = const <MessageReactionModel>[],
    this.inThreadOfMessage
  });


  int pk;
  PersonModel? senderPerson;
  String? text;
  List<FileModel> files;
  DateTime? dateAdded;
  DateTime? dateEdited;
  DateTime? deletedTime;
  MessageModel? replyToMessage;
  PersonModel? forwardedFormPerson;
  List<MessageSeenStateModel> seenBy;
  List<PersonModel> MentionPerson;
  List<MessageReactionModel> messagesReactions;
  MessageModel? inThreadOfMessage;




}