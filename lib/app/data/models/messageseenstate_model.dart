import 'package:jehegram/app/data/models/person_model.dart';

class MessageSeenStateModel {
  MessageSeenStateModel({
    this.pk,
    this.person,
    this.date,
    this.deletedTime,
  });

  int? pk;
  PersonModel? person;
  DateTime? date;
  DateTime? deletedTime;
}
