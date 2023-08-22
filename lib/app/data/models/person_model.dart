import 'package:jehegram/app/data/models/phone_model.dart';

import 'file_model.dart';
import 'group_model.dart';
import 'message_model.dart';

class PersonModel {
  PersonModel({
    this.pk,
    this.firstName,
    this.lastName,
    this.shownName,
    this.phoneNumber,
    this.comID,
    this.bio,
    this.picture,
    this.onlineStatus,
    this.groupCommonsWith,
    this.privateMessages,
    this.isMuted,
  });

  int? pk;
  String? firstName;
  String? lastName;
  String? shownName;
  PhoneModel? phoneNumber;
  String? comID;
  String? bio;
  FileModel? picture;
  DateTime? onlineStatus;
  List<GroupModel>? groupCommonsWith;
  List<MessageModel>? privateMessages;
  bool? isMuted;
}
