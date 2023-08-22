import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';

class GroupModel {
  GroupModel({
    this.isMuted,
    this.dateCreated,
    this.blacklistPersons = const <PersonModel>[],
    this.messages = const <MessageModel>[],
    this.members = const <PersonModel>[],
    this.pinnedMessages = const <MessageModel>[],
    this.information,
    this.profilePictureFile,
    this.isPublic,
    this.comID,
    this.name,
  });

  int? comID;
  bool? isPublic;
  FileModel? profilePictureFile;
  String? name;
  String? information;
  List<PersonModel> members;
  List<MessageModel> messages;
  DateTime? dateCreated;
  List<MessageModel> pinnedMessages;
  List<PersonModel> blacklistPersons;
  bool? isMuted;
}
