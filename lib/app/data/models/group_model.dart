import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';

part 'group_model.g.dart';


@collection
class GroupModel {
  GroupModel({
    this.isMuted,
    this.dateCreated,
    this.blacklistPersons,
    this.messages,
    this.members,
    this.pinnedMessages,
    this.information,
    this.profilePictureFile,
    this.isPublic,
    this.comID,
    this.name,
  });

  Id? id;
  int? comID;
  bool? isPublic;
  FileModel? profilePictureFile;
  String? name;
  String? information;
  IsarLinks<PersonModel>? members;
  List<MessageModel>? messages;
  DateTime? dateCreated;
  List<MessageModel>? pinnedMessages;
  IsarLinks<PersonModel>? blacklistPersons;
  bool? isMuted;
}
