import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:jehegram/app/data/models/file_model.dart';
import 'package:jehegram/app/data/models/message_model.dart';
import 'package:jehegram/app/data/models/person_model.dart';

@collection
class ChannelModel {
  ChannelModel({
    this.pk,
    this.comID,
    this.adminPerson,
    this.isPublic,
    this.name,
    this.profilePictureFile,
    this.information,
    this.members = const <PersonModel>[],
    this.messages = const <MessageModel>[],
    this.dateCreated,
    this.pinnedMessages=const <MessageModel>[],
    this.blacklistPersons=const <PersonModel>[],
    this.isMuted,
    this.deletedTime
  });




  int? pk;
  int? comID;
  PersonModel? adminPerson;
  bool? isPublic;
  String? name;
  FileModel? profilePictureFile;
  String? information;
  List<PersonModel> members;
  List<MessageModel> messages;
  DateTime? dateCreated;
  List<MessageModel> pinnedMessages;
  List<PersonModel> blacklistPersons;
  bool? isMuted;
  DateTime? deletedTime;
}
