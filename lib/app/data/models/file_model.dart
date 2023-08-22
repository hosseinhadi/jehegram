import 'package:isar/isar.dart';

import 'enums/file_type_enum.dart';

part 'file_model.g.dart';

class FileModel {
  FileModel(
      {this.fileType,
      this.dateTimeAdded,
      this.dateTimeDeleted,
      this.extension,
      this.name,
      this.id,
      this.size});

  Id? id;
  String? name;
  FileType? fileType;
  DateTime? dateTimeAdded;
  DateTime? dateTimeDeleted;
  int? size;
  String? extension;
}
