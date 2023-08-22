import 'package:isar/isar.dart';

import 'enums/file_type_enum.dart';
part 'file_model.g.dart';

@embedded
class FileModel {
  FileModel(
      {this.fileType,
      this.dateTimeAdded,
      this.dateTimeDeleted,
      this.extension,
      this.name,
      this.Id,
      this.size});

  Id? Id;
  String? name;
  @enumerated
  FileType? fileType;
  DateTime? dateTimeAdded;
  DateTime? dateTimeDeleted;
  int? size;
  String? extension;
}
