import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';

@collection
class ChannelModel {
  ChannelModel({
    this.id,
    this.comID,
    this.adminPerson,
    this.isPublic,
    this.name,
    this.profilePictureFile,
    this.information,
    this.members,
    this.messages,
    this.dateCreated,
    this.pinnedMessages,
    this.blacklistPersons,
    this.isMuted,
    this.deletedTime
  });




  Id? id;
  int? comID;
  PersonModel? adminPerson;
  bool? isPublic;
  String? name;
  FileModel? profilePictureFile;
  String? information;
  IsarLinks<PersonModel>? members;
  List<MessageModel>? messages;
  DateTime? dateCreated;
  List<MessageModel>? pinnedMessages;
  IsarLinks<PersonModel>? blacklistPersons;
  bool? isMuted;
  DateTime? deletedTime;
}
